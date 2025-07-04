import {Interactable} from "../../Components/Interaction//Interactable/Interactable"
import {HandInputData} from "../../Providers/HandInputData/HandInputData"
import {HandType} from "../../Providers/HandInputData/HandType"
import TargetProvider, {InteractableHitInfo} from "../../Providers/TargetProvider/TargetProvider"
import {clamp} from "../../Utils/mathUtils"
import {isDescendantOf} from "../../Utils/SceneObjectUtils"
import {TargetingMode} from "../Interactor/Interactor"
import {WindowMode} from "./raycastAlgorithms/TimeDataContainer"
import {TimedVec3Container} from "./raycastAlgorithms/TimedVec3Container"

export type PokeTargetProviderConfig = {
  handType: HandType
  drawDebug: boolean
}

const POKE_SPHERECAST_RADIUS = 0.7

const POKE_STRENGTH_DISTANCE_THRESHOLD_CM = 2.5

const POKE_DIRECTION_THRESHOLD = 0.7

enum PokeXDirection {
  None = 0,
  Right = 1,
  Left = 2,
  All = 3
}

enum PokeYDirection {
  None = 0,
  Up = 1,
  Down = 2,
  All = 3
}

enum PokeZDirection {
  None = 0,
  Forward = 1,
  Back = 2,
  All = 3
}

/**
 * Hand based poke target provider. Uses a sphere cast from index mid joint
 * to index tip
 */
export class PokeTargetProvider extends TargetProvider {
  readonly targetingMode: TargetingMode = TargetingMode.Poke

  private handProvider: HandInputData = HandInputData.getInstance()

  private hand = this.handProvider.getHand(this.config.handType)

  private probe = Physics.createGlobalProbe()

  // Used to calculate the average velocity of the fingertip over the past few frames
  private endPointHistory = new TimedVec3Container(WindowMode.FRAME, 4)

  private _drawDebug: boolean = this.config.drawDebug

  private initialPokePosition: vec3 | null = null

  constructor(protected config: PokeTargetProviderConfig) {
    super()
    this.probe.debugDrawEnabled = this.config.drawDebug
  }

  /** @inheritdoc */
  get startPoint(): vec3 {
    // Extend the collider length to the mid joint after a poke has been entered, so we don't lose pokes too easily
    return this._currentInteractableHitInfo !== null
      ? this.hand.indexKnuckle.position
      : this.hand.indexUpperJoint.position
  }

  /** @inheritdoc */
  get endPoint(): vec3 {
    return this.hand.indexTip.position
  }

  get direction() {
    return this.startPoint.sub(this.endPoint).normalize()
  }

  set drawDebug(debug: boolean) {
    this._drawDebug = debug

    this.probe.debugDrawEnabled = debug
  }

  get drawDebug(): boolean {
    return this._drawDebug
  }

  /** @inheritdoc */
  override get currentInteractableHitInfo(): InteractableHitInfo | null {
    return this._currentInteractableHitInfo !== null && this.isAvailable() ? this._currentInteractableHitInfo : null
  }

  /** @inheritdoc */
  update(): void {
    if (!this.isAvailable()) {
      this._currentInteractableHitInfo = null
      this.endPointHistory.clear()
      this.initialPokePosition = null
      return
    }
    this.raycastJoints()
  }

  private raycastJoints() {
    this.probe.sphereCastAll(POKE_SPHERECAST_RADIUS, this.startPoint, this.endPoint, (hits) => {
      const currentInteractable = this.currentInteractableHitInfo?.interactable ?? null
      this._currentInteractableHitInfo = this.getInteractableHitFromRayCast(hits)

      if (this.currentInteractableHitInfo === null) {
        this.initialPokePosition = null
      } else if (
        this.initialPokePosition === null ||
        this.currentInteractableHitInfo.interactable !== currentInteractable
      ) {
        this.initialPokePosition = this.currentInteractableHitInfo.hit.position
      }

      this.endPointHistory.pushWithoutDuplicate(getTime(), this.endPoint)
    })
  }

  private checkAlignment(position: vec3 | null) {
    if (position === null) {
      return false
    }

    const previousAverage = this.endPointHistory.average()
    if (previousAverage === null) {
      return false
    }

    return previousAverage.sub(position).dot(this.direction) > 0
  }

  protected override getInteractableHitFromRayCast(
    hits: RayCastHit[],
    offset = 0,
    allowOutOfFovInteraction = false
  ): InteractableHitInfo | null {
    const hitInfos: InteractableHitInfo[] = []
    for (const hit of hits) {
      if (!allowOutOfFovInteraction && this.camera !== null && !this.camera.inFoV(hit.position)) {
        continue
      }

      const interactable = this.interactionManager.getInteractableByCollider(hit.collider)

      if (
        interactable !== null &&
        (interactable.targetingMode & this.targetingMode) !== 0 &&
        this.isValidPokeDirection(interactable)
      ) {
        hit.skipRemaining = false

        hitInfos.push({
          interactable: interactable,
          localHitPosition: interactable.sceneObject
            .getTransform()
            .getInvertedWorldTransform()
            .multiplyPoint(hit.position),
          hit: {
            collider: hit.collider,
            distance: hit.distance + offset,
            normal: hit.normal,
            position: hit.position,
            skipRemaining: hit.skipRemaining,
            t: 0,
            triangle: hit.triangle,
            getTypeName: hit.getTypeName,
            isOfType: hit.isOfType,
            isSame: hit.isSame
          },
          targetMode: this.targetingMode
        })
        if (
          //Poke Start Event
          (this._currentInteractableHitInfo === null && this.checkAlignment(hit.position)) ||
          //Poke Update Event
          (this._currentInteractableHitInfo && interactable === this._currentInteractableHitInfo.interactable)
        ) {
          return this.getNearestDeeplyNestedInteractable(hitInfos)
        }
      }
    }

    return null
  }

  /**
   * Validates the directionality of a poke trigger.
   *
   * @param interactable - The interactable to check the poke directionality against.
   * @returns `true` if the poke directionality is valid, otherwise `false`.
   *
   */
  private isValidPokeDirection(interactable: Interactable): boolean {
    if (!interactable.enablePokeDirectionality) {
      return true
    }

    if (
      ((interactable.acceptableXDirections & PokeXDirection.Left) !== 0 &&
        interactable.getTransform().left.dot(this.direction) >= POKE_DIRECTION_THRESHOLD) ||
      ((interactable.acceptableXDirections & PokeXDirection.Right) !== 0 &&
        interactable.getTransform().right.dot(this.direction) >= POKE_DIRECTION_THRESHOLD) ||
      ((interactable.acceptableYDirections & PokeYDirection.Up) !== 0 &&
        interactable.getTransform().up.dot(this.direction) >= POKE_DIRECTION_THRESHOLD) ||
      ((interactable.acceptableYDirections & PokeYDirection.Down) !== 0 &&
        interactable.getTransform().down.dot(this.direction) >= POKE_DIRECTION_THRESHOLD) ||
      ((interactable.acceptableZDirections & PokeZDirection.Forward) !== 0 &&
        interactable.getTransform().forward.dot(this.direction) >= POKE_DIRECTION_THRESHOLD) ||
      ((interactable.acceptableZDirections & PokeZDirection.Back) !== 0 &&
        interactable.getTransform().back.dot(this.direction) >= POKE_DIRECTION_THRESHOLD)
    ) {
      return true
    }

    return false
  }

  private getNearestDeeplyNestedInteractable(hitInfos: InteractableHitInfo[]): InteractableHitInfo | null {
    let targetHitInfo: InteractableHitInfo | null = null

    for (let i = hitInfos.length - 1; i >= 0; i--) {
      const currentHitInfo = hitInfos[i]
      if (
        targetHitInfo === null ||
        isDescendantOf(currentHitInfo.interactable.sceneObject, targetHitInfo.interactable.sceneObject)
      ) {
        targetHitInfo = currentHitInfo
      } else {
        break
      }
    }

    return targetHitInfo
  }

  /** @inheritdoc */
  destroy(): void {}

  /** @returns whether the target provider is triggering or not */
  isTriggering(): boolean {
    return this.currentInteractableHitInfo !== null
  }

  /** @inheritdoc */
  getInteractionStrength() {
    if (this.currentInteractableHitInfo === null || this.initialPokePosition === null) {
      return 0
    }
    const hit = this.currentInteractableHitInfo.hit

    const distance = hit.position.distance(this.initialPokePosition)

    const interactionStrength =
      clamp(distance, 0, POKE_STRENGTH_DISTANCE_THRESHOLD_CM) /
      Math.min(
        POKE_STRENGTH_DISTANCE_THRESHOLD_CM,
        this.initialPokePosition.distance(hit.collider.getTransform().getWorldPosition())
      )

    return interactionStrength
  }

  /** @inheritdoc */
  protected isAvailable(): boolean {
    return (
      this.hand.indexTip !== null && this.hand.indexUpperJoint !== null && this.hand.enabled && this.hand.isTracked()
    )
  }
}

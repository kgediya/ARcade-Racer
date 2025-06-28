const MotionControllerModule = require('LensStudio:MotionControllerModule');

@component
export class NewScript extends BaseScriptComponent {
  private transform;
  private controller;

  @input raceTrack: SceneObject;
  @input rootObj: SceneObject;

  private initialized = false;

  private lastKnownPos = new vec3(0, 0, 0);
  private lastKnownRot = quat.fromEulerVec(new vec3(0, 0, 0));
  private lastUpdateTime = 0;
  private velocity = new vec3(0, 0, 0);

  private readonly predictionTime = 0.05;
  private readonly deadReckonDuration = 0.5;

  private isTracking = true;

  onAwake() {
    const options = MotionController.Options.create();
    options.motionType = MotionController.MotionType.SixDoF;

    this.createEvent('UpdateEvent').bind(() => {
      this.onUpdate();
    });

    this.controller = MotionControllerModule.getController(options);
    this.transform = this.sceneObject.getTransform();
    this.controller.onTouchEvent.add(this.onTouchEvent.bind(this));
    this.controller.onTransformEvent.add(this.updateTransform.bind(this));
  }

  onTouchEvent(normalizedPosition, touchId, timestampMs, phase) {
    if (phase != MotionController.TouchPhase.Began) return;
    this.raceTrack.setParentPreserveWorldTransform(this.rootObj);
  }

  updateTransform(newPos, newRot) {
    const now = getTime();
    const dt = now - this.lastUpdateTime;
    if (dt <= 0) return;

    // Dead reckoning + pose prediction
    const newVelocity = newPos.sub(this.lastKnownPos).uniformScale(1 / dt);
    const predictedPos = newPos.add(newVelocity.uniformScale(this.predictionTime));
    const predictedRot = newRot; // or use predictedRot if needed: quat.slerp(this.lastKnownRot, newRot, this.predictionTime / dt)

    // Apply directly (tight follow, no smoothing)
    this.transform.setWorldPosition(predictedPos);
    this.transform.setWorldRotation(predictedRot);

    if (!this.initialized) {
      this.initialized = true;
    }

    this.lastKnownPos = newPos;
    this.lastKnownRot = newRot;
    this.velocity = newVelocity;
    this.lastUpdateTime = now;
    this.isTracking = true;
  }

  onUpdate() {
    const now = getTime();
    const dt = now - this.lastUpdateTime;

    if (dt > this.predictionTime && dt < this.deadReckonDuration) {
      // Dead reckoning fallback (still tight follow)
      const predictedPos = this.lastKnownPos.add(this.velocity.uniformScale(dt));
      this.transform.setWorldPosition(predictedPos);
      this.transform.setWorldRotation(this.lastKnownRot);
      this.isTracking = false;
    }
  }
}

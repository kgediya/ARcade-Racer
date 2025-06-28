const MotionControllerModule = require('LensStudio:MotionControllerModule');

@component
export class NewScript extends BaseScriptComponent {
  private transform;
  private controller;

  @input raceTrack: SceneObject;
  @input rootObj: SceneObject;

  private initialized = false;

  private currentPos = new vec3(0, 0, 0);
  private currentRot = quat.fromEulerVec(new vec3(0, 0, 0));
  private lastKnownPos = new vec3(0, 0, 0);
  private lastKnownRot = quat.fromEulerVec(new vec3(0, 0, 0));
  private lastUpdateTime = 0;
  private velocity = new vec3(0, 0, 0);

  private readonly predictionTime = 0.05;
  private readonly deadReckonDuration = 0.5;

  // Smoothing blend factor (lower = tighter follow)
  private readonly blendFactor = 0.85;
  private readonly minMovementThreshold = 0.001;

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

    const newVelocity = newPos.sub(this.lastKnownPos).uniformScale(1 / dt);
    const predictedPos = newPos.add(newVelocity.uniformScale(this.predictionTime));
    const predictedRot = quat.slerp(this.lastKnownRot, newRot, this.predictionTime / dt);

    // Damped follow (tight + stable)
    if (vec3.distance(predictedPos, this.currentPos) > this.minMovementThreshold) {
      this.currentPos = vec3.lerp(predictedPos, this.currentPos, this.blendFactor);
    } else {
      this.currentPos = predictedPos;
    }

    this.currentRot = quat.slerp(predictedRot, this.currentRot, this.blendFactor);

    this.transform.setWorldPosition(this.currentPos);
    this.transform.setWorldRotation(this.currentRot);

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
      const predictedPos = this.lastKnownPos.add(this.velocity.uniformScale(dt));
      if (predictedPos.distance(this.currentPos) > this.minMovementThreshold) {
  this.currentPos = vec3.lerp(predictedPos, this.currentPos, this.blendFactor);
} else {
  this.currentPos = predictedPos;
}

      this.transform.setWorldPosition(this.currentPos);
      this.transform.setWorldRotation(this.currentRot);
      this.isTracking = false;
    }
  }
}

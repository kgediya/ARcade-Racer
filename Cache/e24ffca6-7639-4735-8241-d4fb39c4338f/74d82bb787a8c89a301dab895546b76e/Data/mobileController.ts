const MotionControllerModule = require('LensStudio:MotionControllerModule');

@component
export class NewScript extends BaseScriptComponent {
  private transform;
  private controller;

  // Position tracking
  private lastPos = new vec3(0, 0, 0);
  private velocity = new vec3(0, 0, 0);
  private lastUpdateTime = 0;

  // Rotation tracking
  private currentRot = quat.fromEulerVec(new vec3(0,0,0))

  // Config
  private readonly predictionTime = 0.05; // Predict 50ms ahead
  private readonly maxDeadReckonTime = 0.5; // Max 0.5s fallback
  private readonly driftCorrectionStrength = 0.01; // Pull back to origin
  private readonly rotationSmoothing = 0.5;

  onAwake() {
    const options = MotionController.Options.create();
    options.motionType = MotionController.MotionType.SixDoF;

    this.controller = MotionControllerModule.getController(options);
    this.transform = this.sceneObject.getTransform();

    this.controller.onTransformEvent.add(this.onPoseUpdate.bind(this));
  }

  onPoseUpdate(newPos, newRot) {
    const now = getTime();
    const dt = now - this.lastUpdateTime;
    if (dt <= 0) return;

    // Estimate velocity
    this.velocity = newPos.sub(this.lastPos).uniformScale(1 / dt);
    this.lastPos = newPos;
    this.lastUpdateTime = now;

    // Simple rotation slerp
    this.currentRot = quat.slerp(this.currentRot, newRot, this.rotationSmoothing);
  }

  onUpdate() {
    const now = getTime();
    const dt = now - this.lastUpdateTime;
    let estimatedPos;

    if (dt < this.maxDeadReckonTime) {
      // Predict position using estimated velocity
      estimatedPos = this.lastPos.add(this.velocity.uniformScale(this.predictionTime));
    } else {
      // Lost tracking too long — apply drift correction
      estimatedPos = vec3.lerp(this.lastPos,new vec3(0, 0, 0), this.driftCorrectionStrength);
    }

    // Apply transform
    this.transform.setWorldPosition(estimatedPos);
    this.transform.setWorldRotation(this.currentRot);
  }
}

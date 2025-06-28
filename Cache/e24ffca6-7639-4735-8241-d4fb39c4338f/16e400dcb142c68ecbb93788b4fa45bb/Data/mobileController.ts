@input float positionSmoothFactor = 0.2; // between 0 (no update) and 1 (instant jump)
@input float rotationSmoothFactor = 0.2;

const MotionControllerModule = require('LensStudio:MotionControllerModule');

@component
export class NewScript extends BaseScriptComponent {
  private transform;
  private controller;
  private calibratedOffset = new vec3(0, 0, 0);
  private calibratedRotationOffset = quat.identity();

  private smoothedPosition = new vec3(0, 0, 0);
  private smoothedRotation = quat.identity();

  private hasInitialTransform = false;

  onAwake() {
    var options = MotionController.Options.create();
    options.motionType = MotionController.MotionType.SixDoF;
    this.controller = MotionControllerModule.getController(options);

    this.transform = this.sceneObject.getTransform();
    this.controller.onTransformEvent.add(this.updateTransform.bind(this));
  }

  updateTransform(position, rotation) {
    const trackingQuality = this.controller.getTrackingQuality();
    if (trackingQuality !== MotionController.TrackingQuality.Normal) return;

    // Apply calibration offsets
    let targetPosition = vec3.add(position, this.calibratedOffset);
    let targetRotation = quat.mul(rotation, this.calibratedRotationOffset);

    if (!this.hasInitialTransform) {
      this.smoothedPosition = targetPosition.clone();
      this.smoothedRotation = targetRotation.clone();
      this.hasInitialTransform = true;
    }

    // Smooth Position
    this.smoothedPosition = vec3.lerp(this.smoothedPosition, targetPosition, this.positionSmoothFactor);
    // Smooth Rotation (slerp)
    this.smoothedRotation = quat.slerp(this.smoothedRotation, targetRotation, this.rotationSmoothFactor);

    // Apply to scene object
    this.transform.setWorldPosition(this.smoothedPosition);
    this.transform.setWorldRotation(this.smoothedRotation);
  }
}

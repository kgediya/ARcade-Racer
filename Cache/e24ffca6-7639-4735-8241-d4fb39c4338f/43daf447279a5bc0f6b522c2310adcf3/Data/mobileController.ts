@input float positionSmoothFactor = 0.2;
@input float rotationSmoothFactor = 0.2;

const MotionControllerModule = require('LensStudio:MotionControllerModule');

@component
export class NewScript extends BaseScriptComponent {
  private transform;
  private controller;
  private calibratedOffset = new vec3(0, 0, 0); // Set externally
  private calibratedRotationOffset = quat.identity(); // Set externally

  private smoothedPosition;
  private smoothedRotation;

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

    // Apply manual calibration offsets
    let adjustedPosition = position.add(this.calibratedOffset);
    let adjustedRotation = rotation.multiply(this.calibratedRotationOffset);

    // Initialize smoothing buffers
    if (!this.hasInitialTransform) {
      this.smoothedPosition = adjustedPosition;
      this.smoothedRotation = adjustedRotation;
      this.hasInitialTransform = true;
    }

    // Apply exponential smoothing (LERP for vec3, SLERP for quat)
    this.smoothedPosition = this.smoothedPosition.lerp(adjustedPosition, this.positionSmoothFactor);
    this.smoothedRotation = this.smoothedRotation.slerp(adjustedRotation, this.rotationSmoothFactor);

    this.transform.setWorldPosition(this.smoothedPosition);
    this.transform.setWorldRotation(this.smoothedRotation);
  }
}

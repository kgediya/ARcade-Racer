const MotionControllerModule = require('LensStudio:MotionControllerModule');

@input float positionSmoothFactor = 0.2;
@input float rotationSmoothFactor = 0.2;

@component
export class NewScript extends BaseScriptComponent {
  private transform: Transform;
  private controller: MotionController;

  private calibratedOffset: vec3 = new vec3(0, 0, 0); // Your manual offset
  private calibratedRotationOffset: quat = quat.identity();

  private smoothedPosition: vec3;
  private smoothedRotation: quat;
  private hasInitialTransform: boolean = false;

  onAwake(): void {
    const options = MotionController.Options.create();
    options.motionType = MotionController.MotionType.SixDoF;

    this.controller = MotionControllerModule.getController(options);
    this.transform = this.sceneObject.getTransform();

    this.controller.onTransformEvent.add((position: vec3, rotation: quat) => {
      this.updateTransform(position, rotation);
    });
  }

  updateTransform(position: vec3, rotation: quat): void {
    const trackingQuality = this.controller.getTrackingQuality();
    if (trackingQuality !== MotionController.TrackingQuality.Normal) return;

    // Apply calibration
    const adjustedPosition = new vec3(
      position.x + this.calibratedOffset.x,
      position.y + this.calibratedOffset.y,
      position.z + this.calibratedOffset.z
    );
    const adjustedRotation = rotation.multiply(this.calibratedRotationOffset);

    if (!this.hasInitialTransform) {
      this.smoothedPosition = adjustedPosition;
      this.smoothedRotation = adjustedRotation;
      this.hasInitialTransform = true;
    }

    // Smooth using correct static calls
    this.smoothedPosition = vec3.lerp(this.smoothedPosition, adjustedPosition, this.positionSmoothFactor);
    this.smoothedRotation = quat.slerp(this.smoothedRotation, adjustedRotation, this.rotationSmoothFactor);

    this.transform.setWorldPosition(this.smoothedPosition);
    this.transform.setWorldRotation(this.smoothedRotation);
  }
}

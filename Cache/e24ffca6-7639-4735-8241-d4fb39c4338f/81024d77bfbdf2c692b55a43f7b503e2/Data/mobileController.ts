const MotionControllerModule = require('LensStudio:MotionControllerModule');

@input float positionSmoothFactor = 0.2;
@input float rotationSmoothFactor = 0.2;

@component
export class NewScript extends BaseScriptComponent {
  private transform: Transform;
  private controller: MotionController;

  // Set these externally during your manual calibration
  private calibratedOffset: vec3 = new vec3(0, 0, 0);
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
    if (trackingQuality !== MotionController.TrackingQuality.Normal) {
      return;
    }

    // Apply calibration
    const adjustedPosition: vec3 = position.add(this.calibratedOffset);
    const adjustedRotation: quat = rotation.multiply(this.calibratedRotationOffset);

    if (!this.hasInitialTransform) {
      this.smoothedPosition = adjustedPosition.clone();
      this.smoothedRotation = adjustedRotation.clone();
      this.hasInitialTransform = true;
    }

    // Apply smoothing
    this.smoothedPosition = this.smoothedPosition.lerp(adjustedPosition, this.positionSmoothFactor);
    this.smoothedRotation = this.smoothedRotation.slerp(adjustedRotation, this.rotationSmoothFactor);

    this.transform.setWorldPosition(this.smoothedPosition);
    this.transform.setWorldRotation(this.smoothedRotation);
  }
}

const MotionControllerModule = require('LensStudio:MotionControllerModule');

@component
export class NewScript extends BaseScriptComponent {
  private transform;
  private controller;

  // Smooth params
  private currentPos = new vec3(0, 0, 0);
 currentRot = quat.fromEulerVec(new vec3(0,0,0));
  @input float positionSmoothing = 0.1; // Smaller = smoother
  @input float rotationSmoothing = 0.1;

  onAwake() {
    const options = MotionController.Options.create();
    options.motionType = MotionController.MotionType.SixDoF;

    this.controller = MotionControllerModule.getController(options);
    this.transform = this.sceneObject.getTransform();

    this.controller.onTransformEvent.add(this.updateTransform.bind(this));
  }

  updateTransform(newPos, newRot) {
    // Optional: Add tracking validation if your controller exposes that
    // if (!this.controller.isTracking()) return;

    // Smooth position
    this.currentPos = vec3.lerp(this.currentPos, newPos, this.positionSmoothing);

    // Smooth rotation
    this.currentRot = quat.slerp(this.currentRot, newRot, this.rotationSmoothing);

    // Apply to scene object
    this.transform.setWorldPosition(this.currentPos);
    this.transform.setWorldRotation(this.currentRot);
  }
}
 
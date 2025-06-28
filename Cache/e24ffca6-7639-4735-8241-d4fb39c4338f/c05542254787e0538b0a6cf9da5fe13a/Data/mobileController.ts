const MotionControllerModule = require('LensStudio:MotionControllerModule');



@component
export class NewScript extends BaseScriptComponent {
  private transform;
  private controller;
@input
raceTrack : SceneObject;
    
@input
rootObj : SceneObject 
    
    private initialized = false;
  // Smoothed pose
  private currentPos = new vec3(0, 0, 0);
  private currentRot = quat.fromEulerVec(new vec3(0, 0, 0));

  // Dead reckoning and prediction
  private lastKnownPos = new vec3(0, 0, 0);
  private lastKnownRot = quat.fromEulerVec(new vec3(0, 0, 0));
  private lastUpdateTime = 0;
  private velocity = new vec3(0, 0, 0);

  // Tuning constants
  private readonly positionSmoothing = 0.2;
  private readonly rotationSmoothing = 0.1;
  private readonly predictionTime = 0.05; // in seconds
  private readonly deadReckonDuration = 0.5; // in seconds

  private isTracking = true;

  onAwake() {
    const options = MotionController.Options.create();
    options.motionType = MotionController.MotionType.SixDoF;
        this.createEvent('UpdateEvent').bind(()=>{
            this.onUpdate()
        })

    this.controller = MotionControllerModule.getController(options);
    this.transform = this.sceneObject.getTransform();

    this.controller.onTransformEvent.add(this.updateTransform.bind(this));
  }

  updateTransform(newPos, newRot) {
    const now = getTime();
    const dt = now - this.lastUpdateTime;
    if (dt <= 0) return;

    // Pose prediction
    const newVelocity = newPos.sub(this.lastKnownPos).uniformScale(1 / dt);
    const predictedPos = newPos.add(newVelocity.uniformScale(this.predictionTime));
    const predictedRot = quat.slerp(this.lastKnownRot, newRot, this.predictionTime / dt);

    // Smoothing
    this.currentPos = vec3.lerp(this.currentPos, predictedPos, this.positionSmoothing);
    this.currentRot = quat.slerp(this.currentRot, predictedRot, this.rotationSmoothing);

       
    // Apply
    this.transform.setWorldPosition(this.currentPos);
    this.transform.setWorldRotation(this.currentRot);
   if(!this.initialized){
            this.initialized = true
            this.raceTrack.setParent()
        } 
    // Update tracking memory
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
      // Dead reckoning fallback
      const predictedPos = this.lastKnownPos.add(this.velocity.uniformScale(dt));
      this.currentPos = vec3.lerp(this.currentPos, predictedPos, this.positionSmoothing);

      this.transform.setWorldPosition(this.currentPos);
      this.transform.setWorldRotation(this.currentRot);
      this.isTracking = false;
    }
  }
}

// Import the Motion Controller module from Lens Studio
const MotionControllerModule = require("LensStudio:MotionControllerModule");

@component
export class NewScript extends BaseScriptComponent {
  // Transform of the current scene object
  private transform;
  
  // Motion controller instance
  private controller;

  // Optional parent reference
  @input rootObj: SceneObject;

  // Initialization state
  private initialized = false;

  // Current and previous transforms
  private currentPos = new vec3(0, 0, 0);
  private currentRot = quat.fromEulerVec(new vec3(0, 0, 0));
  private lastKnownPos = new vec3(0, 0, 0);
  private lastKnownRot = quat.fromEulerVec(new vec3(0, 0, 0));
  private lastUpdateTime = 0;

  // Estimated velocity for dead reckoning
  private velocity = new vec3(0, 0, 0);

  // Tuning parameters
  private readonly predictionTime = 0.05;          // Seconds ahead to predict
  private readonly deadReckonDuration = 0.5;       // Max time to predict when no new data
  private readonly blendFactor = 0.55;             // Interpolation smoothing factor
  private readonly minMovementThreshold = 0.001;   // Minimum change to apply smoothing

  private isTracking = true;

  // Lifecycle: Called once when the component is initialized
  onAwake() {
    const options = MotionController.Options.create();
    options.motionType = MotionController.MotionType.SixDoF;

    // Create an update event loop
    this.createEvent("UpdateEvent").bind(() => {
      this.onUpdate();
    });

    // Get a motion controller with the specified options
    this.controller = MotionControllerModule.getController(options);
    this.transform = this.sceneObject.getTransform();

    // Bind to transform updates from the controller
    this.controller.onTransformEvent.add(this.updateTransform.bind(this));
  }

  /**
   * Called whenever the controller provides a new transform.
   * Performs prediction and smoothing on the motion.
   */
  updateTransform(newPos, newRot) {
    const now = getTime();
    const dt = now - this.lastUpdateTime;
    if (dt <= 0) return;

    // Calculate new velocity and predict next position/rotation
    const newVelocity = newPos.sub(this.lastKnownPos).uniformScale(1 / dt);
    const predictedPos = newPos.add(newVelocity.uniformScale(this.predictionTime));
    const predictedRot = quat.slerp(this.lastKnownRot, newRot, this.predictionTime / dt);

    // Smooth position using interpolation
    if (predictedPos.distance(this.currentPos) > this.minMovementThreshold) {
      this.currentPos = vec3.lerp(predictedPos, this.currentPos, this.blendFactor);
    } else {
      this.currentPos = predictedPos;
    }

    // Smooth rotation
    this.currentRot = quat.slerp(predictedRot, this.currentRot, this.blendFactor);

    // Apply new transform to the scene object
    this.transform.setWorldPosition(this.currentPos);
    this.transform.setWorldRotation(this.currentRot);

    // Track initialization
    if (!this.initialized) {
      this.initialized = true;
    }

    // Save state for future prediction
    this.lastKnownPos = newPos;
    this.lastKnownRot = newRot;
    this.velocity = newVelocity;
    this.lastUpdateTime = now;
    this.isTracking = true;
  }

  /**
   * Called every frame.
   * Performs dead reckoning prediction if data hasn't updated recently.
   */
  onUpdate() {
    const now = getTime();
    const dt = now - this.lastUpdateTime;

    // Predict if data is stale but still within dead reckoning window
    if (dt > this.predictionTime && dt < this.deadReckonDuration) {
      const predictedPos = this.lastKnownPos.add(this.velocity.uniformScale(dt));

      // Smooth position
      if (predictedPos.distance(this.currentPos) > this.minMovementThreshold) {
        this.currentPos = vec3.lerp(predictedPos, this.currentPos, this.blendFactor);
      } else {
        this.currentPos = predictedPos;
      }

      // Apply last known rotation
      this.transform.setWorldPosition(this.currentPos);
      this.transform.setWorldRotation(this.currentRot);
      this.isTracking = false;
    }
  }
}

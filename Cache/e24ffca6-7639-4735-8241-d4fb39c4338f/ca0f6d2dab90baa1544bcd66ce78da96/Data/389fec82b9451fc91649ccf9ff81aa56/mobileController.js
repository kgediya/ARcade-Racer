"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.NewScript = void 0;
var __selfType = requireType("./mobileController");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const MotionControllerModule = require('LensStudio:MotionControllerModule');
let NewScript = class NewScript extends BaseScriptComponent {
    onAwake() {
        const options = MotionController.Options.create();
        options.motionType = MotionController.MotionType.SixDoF;
        this.controller = MotionControllerModule.getController(options);
        this.transform = this.sceneObject.getTransform();
        this.controller.onTransformEvent.add(this.updateTransform.bind(this));
    }
    updateTransform(newPos, newRot) {
        const now = getTime();
        const dt = now - this.lastUpdateTime;
        if (dt <= 0)
            return;
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
    __initialize() {
        super.__initialize();
        this.currentPos = new vec3(0, 0, 0);
        this.currentRot = quat.fromEulerVec(new vec3(0, 0, 0));
        this.lastKnownPos = new vec3(0, 0, 0);
        this.lastKnownRot = quat.fromEulerVec(new vec3(0, 0, 0));
        this.lastUpdateTime = 0;
        this.velocity = new vec3(0, 0, 0);
        this.positionSmoothing = 0.2;
        this.rotationSmoothing = 0.5;
        this.predictionTime = 0.05;
        this.deadReckonDuration = 0.5;
        this.isTracking = true;
    }
};
exports.NewScript = NewScript;
exports.NewScript = NewScript = __decorate([
    component
], NewScript);
//# sourceMappingURL=mobileController.js.map
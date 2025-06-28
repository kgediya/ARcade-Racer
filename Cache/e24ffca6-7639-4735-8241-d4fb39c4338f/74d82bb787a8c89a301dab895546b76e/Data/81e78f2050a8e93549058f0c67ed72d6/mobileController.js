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
        this.controller.onTransformEvent.add(this.onPoseUpdate.bind(this));
    }
    onPoseUpdate(newPos, newRot) {
        const now = getTime();
        const dt = now - this.lastUpdateTime;
        if (dt <= 0)
            return;
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
        }
        else {
            // Lost tracking too long — apply drift correction
            estimatedPos = vec3.lerp(this.lastPos, new vec3(0, 0, 0), this.driftCorrectionStrength);
        }
        // Apply transform
        this.transform.setWorldPosition(estimatedPos);
        this.transform.setWorldRotation(this.currentRot);
    }
    __initialize() {
        super.__initialize();
        this.lastPos = new vec3(0, 0, 0);
        this.velocity = new vec3(0, 0, 0);
        this.lastUpdateTime = 0;
        this.currentRot = quat.fromEulerVec(new vec3(0, 0, 0));
        this.predictionTime = 0.05;
        this.maxDeadReckonTime = 0.5;
        this.driftCorrectionStrength = 0.01;
        this.rotationSmoothing = 0.5;
    }
};
exports.NewScript = NewScript;
exports.NewScript = NewScript = __decorate([
    component
], NewScript);
//# sourceMappingURL=mobileController.js.map
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
    __initialize() {
        super.__initialize();
        this.currentPos = new vec3(0, 0, 0);
        this.currentRot = quat.fromEulerVec(new vec3(0, 0, 0));
        this.positionSmoothing = 0.05;
        this.rotationSmoothing = 0.5;
    }
};
exports.NewScript = NewScript;
exports.NewScript = NewScript = __decorate([
    component
], NewScript);
//# sourceMappingURL=mobileController.js.map
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
        var options = MotionController.Options.create();
        options.motionType = MotionController.MotionType.SixDoF;
        this.controller = MotionControllerModule.getController(options);
        this.transform = this.sceneObject.getTransform();
        this.controller.onTransformEvent.add(this.updateTransform.bind(this));
    }
    updateTransform(position, rotation) {
        this.transform.setWorldPosition(position);
        this.transform.setWorldRotation(rotation);
    }
};
exports.NewScript = NewScript;
exports.NewScript = NewScript = __decorate([
    component
], NewScript);
//# sourceMappingURL=mobileController.js.map
"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.NewScript = void 0;
var __selfType = requireType("./WorldQueryHitExample");
function component(target) { target.getTypeName = function () { return __selfType; }; }
// Import required modules
const WorldQueryModule = require("LensStudio:WorldQueryModule");
const SIK = require("SpectaclesInteractionKit.lspkg/SIK").SIK;
const InteractorTriggerType = require("SpectaclesInteractionKit.lspkg/Core/Interactor/Interactor").InteractorTriggerType;
const EPSILON = 0.01;
let NewScript = class NewScript extends BaseScriptComponent {
    // Called when component is initialized
    onAwake() {
        this.hitTestSession = this.createHitTestSession(this.filterEnabled);
        if (!this.sceneObject) {
            print("Please set Target Object input");
            return;
        }
        this.transform = this.targetObject.getTransform();
        this.targetObject.enabled = false;
        this.setObjectEnabled(this.indexToSpawn);
        // Bind update function to every frame
        this.createEvent("UpdateEvent").bind(this.onUpdate.bind(this));
    }
    // Create a hit test session with optional filter
    createHitTestSession(filterEnabled) {
        const options = HitTestSessionOptions.create();
        options.filter = filterEnabled;
        return WorldQueryModule.createHitTestSessionWithOptions(options);
    }
    // Enable physics colliders for all children of a given object
    enableColliders(targetObj) {
        for (let i = 0; i < targetObj.getChildrenCount(); i++) {
            const child = targetObj.getChild(i);
            const bodyComponent = child.getComponent("Physics.BodyComponent");
            if (bodyComponent) {
                bodyComponent.enabled = true;
            }
        }
    }
    // Callback for hit test result
    onHitTestResult(results) {
        if (results === null) {
            this.targetObject.enabled = false;
            return;
        }
        const hitNormal = results.normal;
        const alignmentWithUp = hitNormal.dot(vec3.up());
        // Only allow spawning on horizontal (ground) surfaces
        if (alignmentWithUp < 0.9) {
            this.targetObject.enabled = false;
            return;
        }
        this.targetObject.enabled = true;
        const hitPosition = results.position;
        // Compute facing direction from surface normal
        let lookDirection;
        if (1 - Math.abs(hitNormal.normalize().dot(vec3.up())) < EPSILON) {
            lookDirection = vec3.forward();
        }
        else {
            lookDirection = hitNormal.cross(vec3.up());
        }
        const toRotation = quat.lookAt(lookDirection, hitNormal);
        // Update target object position and orientation
        this.targetObject.getTransform().setWorldPosition(hitPosition);
        this.targetObject.getTransform().setWorldRotation(toRotation);
        // On trigger end, perform spawn
        if (this.primaryInteractor.previousTrigger !== InteractorTriggerType.None &&
            this.primaryInteractor.currentTrigger === InteractorTriggerType.None) {
            const parent = this.objectsToSpawn[this.indexToSpawn].getParent();
            // Spawn primary object
            const newObject = parent.copyWholeHierarchy(this.objectsToSpawn[this.indexToSpawn]);
            newObject.setParentPreserveWorldTransform(null);
            // Optionally enable physics if the object has them
            if (this.indexToSpawn === 1) {
                this.enableColliders(newObject);
            }
            // First-time spawn logic: also spawn the collider plane (index 2)
            if (!this.firstSpawnDone) {
                this.firstSpawnDone = true;
                const collider = parent.copyWholeHierarchy(this.objectsToSpawn[2]);
                collider.setParentPreserveWorldTransform(null);
                collider.enabled = true;
                print("Spawned collider object (index 2)");
            }
        }
    }
    // Runs every frame
    onUpdate() {
        this.primaryInteractor = SIK.InteractionManager.getTargetingInteractors().shift();
        if (this.primaryInteractor && this.primaryInteractor.isActive() && this.primaryInteractor.isTargeting()) {
            const rayStart = new vec3(this.primaryInteractor.startPoint.x, this.primaryInteractor.startPoint.y, this.primaryInteractor.startPoint.z + 30);
            const rayEnd = this.primaryInteractor.endPoint;
            // Handle long pinch gesture for switching object
            if (this.primaryInteractor.currentTrigger !== InteractorTriggerType.None) {
                if (this.triggerStartTime === null) {
                    this.triggerStartTime = getTime(); // Start timing
                }
                else {
                    const heldDuration = getTime() - this.triggerStartTime;
                    if (heldDuration >= 1.0) {
                        this.triggerStartTime = null;
                        this.indexToSpawn = 1 - this.indexToSpawn; // Flip between 0 and 1
                        this.setObjectEnabled(this.indexToSpawn);
                        print("Object index switched to: " + this.indexToSpawn);
                    }
                }
            }
            else {
                this.triggerStartTime = null;
            }
            // Run hit test each frame
            this.hitTestSession.hitTest(rayStart, rayEnd, this.onHitTestResult.bind(this));
        }
        else {
            this.targetObject.enabled = false;
            this.triggerStartTime = null;
        }
    }
    // Utility to set which object is active/visible
    setObjectIndex(i) {
        this.indexToSpawn = i;
    }
    // Enable only the selected object, disable others
    setObjectEnabled(i) {
        for (let j = 0; j < this.objectsToSpawn.length; j++) {
            this.objectsToSpawn[j].enabled = j === i;
        }
    }
    __initialize() {
        super.__initialize();
        this.firstSpawnDone = false;
        this.triggerStartTime = null;
    }
};
exports.NewScript = NewScript;
exports.NewScript = NewScript = __decorate([
    component
], NewScript);
//# sourceMappingURL=WorldQueryHitExample.js.map
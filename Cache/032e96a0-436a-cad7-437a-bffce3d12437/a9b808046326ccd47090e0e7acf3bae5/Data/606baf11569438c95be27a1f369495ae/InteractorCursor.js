"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.InteractorCursor = exports.CursorMode = void 0;
var __selfType = requireType("./InteractorCursor");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const Interactor_1 = require("../../../Core/Interactor/Interactor");
const LineRenderer_1 = require("../../../Utils/views/LineRenderer/LineRenderer");
const CircleVisual_1 = require("./CircleVisual");
const CursorViewModel_1 = require("./CursorViewModel");
const InteractionManager_1 = require("../../../Core/InteractionManager/InteractionManager");
const CursorControllerProvider_1 = require("../../../Providers/CursorControllerProvider/CursorControllerProvider");
const Event_1 = require("../../../Utils/Event");
const NativeLogger_1 = require("../../../Utils/NativeLogger");
const validate_1 = require("../../../Utils/validate");
var CursorMode;
(function (CursorMode) {
    CursorMode["Auto"] = "Auto";
    CursorMode["Translate"] = "Translate";
    CursorMode["ScaleTopLeft"] = "ScaleTopLeft";
    CursorMode["ScaleTopRight"] = "ScaleTopRight";
    CursorMode["Disabled"] = "Disabled";
    CursorMode["Custom"] = "Custom";
})(CursorMode || (exports.CursorMode = CursorMode = {}));
const LINE_VERTICES = 10;
const LINE_MIDPOINT = 0.7;
const DEFAULT_IDLE_OUTLINE_OFFSET = 0.0;
const DEFAULT_HOVER_OUTLINE_OFFSET = 0.1;
const DEFAULT_IDLE_SCALE = 1.0;
const DEFAULT_SQUISH_SCALE = 0.6;
const DEFAULT_IDLE_OUTLINE_ALPHA = 1.0;
const DEFAULT_HOVER_OUTLINE_ALPHA = 0.5;
const TAG = "InteractorCursor";
/**
 * This class represents a cursor for interactors, providing visual feedback for different interaction states. It manages the cursor's appearance, including its circle visual and manipulation line, and handles state changes and events.
 */
let InteractorCursor = class InteractorCursor extends BaseScriptComponent {
    onAwake() {
        this.defineScriptEvents();
        this.visual = this.createVisual();
        this.circleVisualConfig = {
            meshSceneObject: this.visual,
            textures: {
                translate: requireAsset("./translate.png"),
                scaleTL: requireAsset("./scale-tl.png"),
                scaleTR: requireAsset("./scale-tr.png"),
                disabled: requireAsset("./disabled.png")
            }
        };
        this.manipulateLineConfig = {
            points: [new vec3(0, 0, 0), new vec3(0, 100, 0)],
            material: requireAsset("./ManipulateLineMaterial.mat"),
            startWidth: 0.1,
            endWidth: 0.1,
            startColor: new vec4(1, 1, 1, 1),
            endColor: new vec4(1, 1, 1, 1),
            enabled: false
        };
        this.circleVisual = new CircleVisual_1.CircleVisual(this.circleVisualConfig);
        this.manipulateLine = new LineRenderer_1.default(this.manipulateLineConfig);
        this.manipulateLine.getSceneObject().setParent(this.getSceneObject());
    }
    set interactor(interactor) {
        (0, validate_1.validate)(interactor, "InteractorCursor cannot have an undefined Interactor reference.");
        if (this.interactor !== null) {
            this.log.f(`InteractorCursor's Interactor has already been set to: ${this.interactor.sceneObject.name}`);
        }
        this._interactor = interactor;
    }
    get interactor() {
        var _a;
        return (_a = this._interactor) !== null && _a !== void 0 ? _a : null;
    }
    /**
     * Programmatically instantiates the cursor visual
     * @returns The SceneObject for the cursor visual
     */
    createVisual() {
        const visual = global.scene.createSceneObject("CursorVisual");
        visual.setParent(this.getSceneObject());
        const visualMesh = visual.createComponent("Component.RenderMeshVisual");
        visualMesh.mesh = requireAsset("./Plane.mesh");
        visualMesh.mainMaterial = requireAsset("./Cursor.mat");
        return visual;
    }
    updateWorldCursor(data) {
        (0, validate_1.validate)(data.position);
        this.circleVisual.worldPosition = data.position;
        if (data.interactionStrength !== null) {
            this.circleVisual.circleSquishScale = MathUtils.lerp(DEFAULT_IDLE_SCALE, DEFAULT_SQUISH_SCALE, data.interactionStrength);
        }
        else {
            this.circleVisual.circleSquishScale = DEFAULT_IDLE_SCALE;
        }
        this.circleVisual.isTriggering = data.isTriggering;
        this.circleVisual.worldScale = vec3.one().uniformScale(data.scale);
    }
    /**
     * Get the world position of this interactor's cursor visual
     * @returns vec3 of the worldPosition
     */
    get cursorPosition() {
        return this.viewModel.cursorPosition;
    }
    /**
     * Set the world position of this interactor's cursor visual
     * @param position - vec3 of the worldPosition, null to revert to default behavior to follow raycast
     */
    set cursorPosition(position) {
        this.viewModel.positionOverride = position;
    }
    /**
     * Set the {@link CursorMode} of the cursor to change the visual
     * To return the cursor to its default {@link StateMachine} logic, use {@link CursorMode}.Auto
     * @param mode - The new mode of the cursor visual
     */
    set cursorMode(mode) {
        this.circleVisual.cursorMode = mode;
    }
    /**
     * Set the {@link Texture} of the cursor when using the {@link CursorMode}.Custom mode
     * Must explicitly set the {@link CursorMode} to {@link CursorMode}.Custom before the texture appears.
     * @param texture - The custom texture (typically cached via requireAsset(.../assetName.png) as Texture) to use
     */
    set customTexture(texture) {
        this.circleVisual.customTexture = texture;
    }
    /**
     * Set the render order of the cursor visual.
     */
    set renderOrder(renderOrder) {
        this.circleVisual.renderOrder = renderOrder;
    }
    /**
     * @returns the transform and material parameters of the cursor to allow other cursor implementations to re-use the same values.
     */
    get cursorParameters() {
        const transform = this.circleVisual.sceneObject.getTransform();
        const materialParameters = this.circleVisual.materialParameters;
        return {
            worldPosition: transform.getWorldPosition(),
            worldRotation: transform.getWorldRotation().toEulerAngles(),
            worldScale: transform.getWorldScale(),
            isShown: this.circleVisual.isShown,
            maxAlpha: materialParameters.maxAlpha,
            outlineAlpha: materialParameters.outlineAlpha,
            outlineOffset: materialParameters.outlineOffset,
            circleSquishScale: materialParameters.circleSquishScale,
            isTriggering: materialParameters.isTriggering,
            useTexture: materialParameters.useTexture,
            cursorTexture: materialParameters.cursorTexture,
            handType: materialParameters.handType,
            multipleInteractorsActive: materialParameters.multipleInteractorsActive
        };
    }
    updateManipulateLine(data) {
        this.manipulateLine.points = this.getCurvedLinePoints(data.origin, data.endPoint, data.delta);
    }
    defineScriptEvents() {
        this.createEvent("OnEnableEvent").bind(() => {
            this.onEnable();
        });
        this.createEvent("OnDisableEvent").bind(() => {
            this.onDisable();
        });
        this.createEvent("OnDestroyEvent").bind(() => {
            this.onDestroy();
        });
        this.createEvent("OnStartEvent").bind(() => {
            if (this.interactor === null) {
                this.log.f(`InteractorCursor must have an Interactor set immediately after initializiation.`);
            }
            this.viewModel = new CursorViewModel_1.CursorViewModel(this.enableCursorHolding, this.enableFilter, this.interactor);
            this.viewModel.onStateChange.add(this.onStateChange);
            this.viewModel.onCursorUpdate.add(this.onCursorUpdate);
            this.cursorController.registerCursor(this);
            let handType;
            switch (this.interactor.inputType) {
                case Interactor_1.InteractorInputType.LeftHand:
                    handType = "left";
                    break;
                case Interactor_1.InteractorInputType.RightHand:
                    handType = "right";
                    break;
                default:
                    return;
            }
            this.circleVisual.handType = handType;
        });
    }
    /**
     * Enable the cursor visual.
     */
    onEnable() {
        this.circleVisualEnabled = true;
    }
    /**
     * Disable the cursor visual.
     */
    onDisable() {
        this.circleVisualEnabled = false;
    }
    onDestroy() {
        this.visual.destroy();
    }
    /**
     * Creates the points of the curved line used for far field manipulation.
     * @param start - where the line starts
     * @param end - where the line ends
     * @param curveOffset - the vector that the line's midpoint will be offset by to create the curve
     * @returns an array of points along the curved line created from start to end.
     */
    getCurvedLinePoints(start, end, curveOffset) {
        let midPoint = vec3.lerp(start, end, LINE_MIDPOINT);
        if (curveOffset !== null) {
            midPoint = midPoint.add(curveOffset);
        }
        const points = [];
        for (let ratio = 0; ratio <= 1; ratio += 1 / LINE_VERTICES) {
            const tangent1 = vec3.lerp(start, midPoint, ratio);
            const tangent2 = vec3.lerp(midPoint, end, ratio);
            const curve = vec3.lerp(tangent1, tangent2, ratio);
            points.push(curve);
        }
        return points;
    }
    checkMultipleInteractorsActive() {
        const interactors = this.interactionManager.getInteractorsByType(Interactor_1.InteractorInputType.All);
        const activeInteractors = interactors.filter((interactor) => {
            return interactor.isActive() && interactor.isTargeting();
        });
        return activeInteractors.length > 1;
    }
    __initialize() {
        super.__initialize();
        this.log = new NativeLogger_1.default(TAG);
        this.circleVisualEnabled = true;
        this.interactionManager = InteractionManager_1.InteractionManager.getInstance();
        this.cursorController = CursorControllerProvider_1.CursorControllerProvider.getInstance();
        this.onEnableChangedEvent = new Event_1.default();
        this.
        /**
         * Called whenever the cursor changes enabled state (showing / hiding the cursor visual)
         */
        onEnableChanged = this.onEnableChangedEvent.publicApi();
        this.onStateChange = (state) => {
            switch (state) {
                case CursorViewModel_1.CursorState.Inactive:
                    // If the visual is already hidden, do not invoke the extra event.
                    if (this.circleVisual.isShown) {
                        this.onEnableChangedEvent.invoke(false);
                    }
                    this.circleVisual.isShown = false;
                    this.circleVisual.outlineOffset = DEFAULT_IDLE_OUTLINE_OFFSET;
                    break;
                case CursorViewModel_1.CursorState.Idle:
                    this.circleVisual.outlineAlpha = DEFAULT_IDLE_OUTLINE_ALPHA;
                    this.circleVisual.outlineOffset = DEFAULT_IDLE_OUTLINE_OFFSET;
                    break;
                case CursorViewModel_1.CursorState.Hovering:
                    this.circleVisual.outlineAlpha = DEFAULT_HOVER_OUTLINE_ALPHA;
                    this.circleVisual.outlineOffset = DEFAULT_HOVER_OUTLINE_OFFSET;
                    break;
            }
        };
        this.onCursorUpdate = (viewState) => {
            // If the script component has been disabled, do not show the cursor visual.
            const shouldShow = viewState.cursorEnabled && this.circleVisualEnabled;
            if (shouldShow !== this.circleVisual.isShown) {
                this.onEnableChangedEvent.invoke(shouldShow);
            }
            this.circleVisual.isShown = shouldShow;
            this.circleVisual.multipleInteractorsActive = this.checkMultipleInteractorsActive();
            this.manipulateLine.setEnabled(viewState.lineEnabled);
            if (viewState.cursorEnabled) {
                this.updateWorldCursor(viewState.cursorData);
            }
            if (viewState.lineEnabled) {
                this.updateManipulateLine(viewState.lineData);
            }
        };
    }
};
exports.InteractorCursor = InteractorCursor;
exports.InteractorCursor = InteractorCursor = __decorate([
    component
], InteractorCursor);
//# sourceMappingURL=InteractorCursor.js.map
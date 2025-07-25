"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.HandRayProvider = void 0;
const HandInputData_1 = require("../../Providers/HandInputData/HandInputData");
const HandInteractor_1 = require("../HandInteractor/HandInteractor");
const RaycastProxy_1 = require("./raycastAlgorithms/RaycastProxy");
/**
 * This class provides raycasting functionality for hand interactions. It selects the appropriate raycast algorithm based on the provided configuration.
 */
class HandRayProvider {
    constructor(config) {
        this.config = config;
        this.handProvider = HandInputData_1.HandInputData.getInstance();
        this.hand = this.handProvider.getHand(this.config.handType);
        this.raycast = new RaycastProxy_1.default(this.hand);
    }
    /** @inheritdoc */
    getRaycastInfo() {
        var _a, _b, _c, _d, _e;
        // When not near an InteractionPlane, use the raycast base's logic for direction / locus.
        if (this.config.handInteractor.fieldTargetingMode === HandInteractor_1.FieldTargetingMode.FarField) {
            return ((_a = this.raycast.getRay()) !== null && _a !== void 0 ? _a : {
                direction: vec3.zero(),
                locus: vec3.zero()
            });
        }
        // When near an InteractionPlane, raycast from the midpoint straight towards the plane.
        else {
            const indexTip = (_b = this.hand.indexTip) === null || _b === void 0 ? void 0 : _b.position;
            const thumbTip = (_c = this.hand.thumbTip) === null || _c === void 0 ? void 0 : _c.position;
            if (indexTip === undefined || thumbTip === undefined) {
                return {
                    direction: vec3.zero(),
                    locus: vec3.zero()
                };
            }
            const locus = indexTip.add(thumbTip).uniformScale(0.5);
            const planeProjection = (_e = (_d = this.config.handInteractor.currentInteractionPlane) === null || _d === void 0 ? void 0 : _d.projectPoint(locus)) !== null && _e !== void 0 ? _e : null;
            if (planeProjection === null) {
                return {
                    direction: vec3.zero(),
                    locus: vec3.zero()
                };
            }
            else {
                return {
                    direction: planeProjection.point.sub(locus).normalize(),
                    locus: locus
                };
            }
        }
    }
    /** @inheritdoc */
    isAvailable() {
        return (this.hand.isInTargetingPose() && this.hand.isTracked()) || this.hand.isPinching();
    }
    /** @inheritdoc */
    reset() {
        this.raycast.reset();
    }
}
exports.HandRayProvider = HandRayProvider;
//# sourceMappingURL=HandRayProvider.js.map
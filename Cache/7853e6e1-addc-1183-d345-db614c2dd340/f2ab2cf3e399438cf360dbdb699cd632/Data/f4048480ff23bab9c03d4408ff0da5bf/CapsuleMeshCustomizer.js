"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.CapsuleMeshCustomizer = void 0;
var __selfType = requireType("./CapsuleMeshCustomizer");
function component(target) { target.getTypeName = function () { return __selfType; }; }
/**
 * This class customizes a mesh visual to create an extendable capsule shape. It allows configuration of the capsule's
 * length, radius, and poly-count through various input properties.
 */
let CapsuleMeshCustomizer = class CapsuleMeshCustomizer extends BaseScriptComponent {
    onAwake() {
        this.defineScriptEvents();
    }
    defineScriptEvents() {
        this.createEvent("OnStartEvent").bind(() => {
            this.init();
        });
    }
    init() {
        this.builder.topology = MeshTopology.Triangles;
        this.builder.indexType = MeshIndexType.UInt16;
        this.buildCapsule();
    }
    buildCircle(originX, radius, isEnd) {
        let points = [];
        let normals = [];
        let uvs = [];
        let uProportion;
        if (isEnd) {
            let arcLength;
            if (originX < 0) {
                arcLength = (((this.radius + this.capsuleLength / 2 + originX) / this.radius) * this.uLength) / 4;
            }
            else {
                arcLength =
                    ((1 - (this.radius + this.capsuleLength / 2 - originX) / this.radius) * this.uLength) / 4 + this.uLength / 4;
            }
            uProportion = arcLength;
        }
        else {
            uProportion = this.uLength / 4;
        }
        for (let i = -Math.PI / 2; i < 1.5 * Math.PI; i += Math.PI / this.radianStepCount) {
            const point = [originX, radius * Math.sin(i), radius * Math.cos(i)];
            const normal = [0, -radius * Math.sin(i), -radius * Math.cos(i)];
            const firstHalf = i <= Math.PI / 2;
            let u = uProportion / this.uLength;
            if (!firstHalf) {
                u = 1 - u;
            }
            const uv = [u, 0.5 + radius * Math.sin(i) * 0.5];
            points = points.concat(point);
            normals = normals.concat(normal);
            uvs = uvs.concat(uv);
        }
        return [points, normals, uvs];
    }
    buildCylinder(length, radius) {
        let points = [];
        let normals = [];
        let uvs = [];
        for (let circleCount = 0; circleCount < this.cylinderStepCount; circleCount++) {
            const i = -length / 2 + (circleCount * length) / this.cylinderStepCount;
            const circleData = this.buildCircle(i, radius, false);
            points = points.concat(circleData[0]);
            normals = normals.concat(circleData[1]);
            uvs = uvs.concat(circleData[2]);
        }
        return [points, normals, uvs];
    }
    buildEndCap(originX, radius, isRight) {
        let points = [];
        let normals = [];
        let uvs = [];
        const step = radius / this.endXStepCount;
        for (let i = isRight ? step : -radius + step; i < (isRight ? radius : 0); i += step) {
            const crossSectionRadius = Math.sqrt(radius ** 2 - i ** 2);
            const circleData = this.buildCircle(i + originX, crossSectionRadius, true);
            points = points.concat(circleData[0]);
            for (let j = 0; j < this.radianStepCount * 2; j++) {
                circleData[1][j * 3] = -i;
            }
            normals = normals.concat(circleData[1]);
            uvs = uvs.concat(circleData[2]);
        }
        return [points, normals, uvs];
    }
    // TODO: Investigate, circleIndexB is never used.
    linkCircleIndices(circleIndexA, _circleIndexB) {
        let indices = [];
        const numPoints = this.radianStepCount * 2;
        const firstIndex = circleIndexA * numPoints;
        for (let i = firstIndex; i < (circleIndexA + 1) * numPoints - 1; i++) {
            indices = indices.concat([i + 1, i + numPoints, i]);
            indices = indices.concat([i + 1, i + numPoints + 1, i + numPoints]);
        }
        const lastIndex = (circleIndexA + 1) * numPoints - 1;
        indices = indices.concat([
            firstIndex,
            lastIndex + numPoints,
            lastIndex,
            firstIndex,
            firstIndex + numPoints,
            lastIndex + numPoints
        ]);
        return indices;
    }
    linkCapsuleIndices() {
        let indices = [];
        const numCircles = (this.endXStepCount - 1) * 2 + this.cylinderStepCount;
        for (let i = 0; i < numCircles - 1; i++) {
            indices = indices.concat(this.linkCircleIndices(i, i + 1));
        }
        return indices;
    }
    linkEndIndices(endIndex, circleIndex, isRight) {
        let indices = [];
        const numPoints = this.radianStepCount * 2;
        const firstIndex = circleIndex * numPoints;
        for (let i = firstIndex; i < firstIndex + numPoints - 1; i++) {
            if (isRight) {
                indices = indices.concat([i + 1, endIndex, i]);
            }
            else {
                indices = indices.concat([endIndex, i + 1, i]);
            }
        }
        const lastIndex = (circleIndex + 1) * numPoints - 1;
        if (isRight) {
            indices = indices.concat([firstIndex, endIndex, lastIndex]);
        }
        else {
            indices = indices.concat([endIndex, firstIndex, lastIndex]);
        }
        return indices;
    }
    checkValid() {
        return this.radius === 0 || this.radianStepCount === 0 || this.cylinderStepCount === 0 || this.endXStepCount === 0;
    }
    buildCapsule() {
        if (this.checkValid()) {
            throw new Error("Step counts and radius must be positive, whole numbers.");
        }
        if (this.builder.getIndicesCount() !== 0) {
            this.builder.eraseIndices(0, this.builder.getIndicesCount());
        }
        if (this.builder.getVerticesCount() !== 0) {
            this.builder.eraseVertices(0, this.builder.getVerticesCount());
        }
        const leftEndCap = this.buildEndCap(-this.capsuleLength / 2, this.radius, false);
        const cylinder = this.buildCylinder(this.capsuleLength, this.radius);
        const rightEndCap = this.buildEndCap(this.capsuleLength / 2, this.radius, true);
        const endPoints = [
            [-this.capsuleLength / 2 - this.radius, 0, 0, this.capsuleLength / 2 + this.radius, 0, 0],
            this.endPointNormals,
            this.endPointUVs
        ];
        this.builder.appendVertices(leftEndCap);
        this.builder.appendVertices(cylinder);
        this.builder.appendVertices(rightEndCap);
        this.builder.appendVertices(endPoints);
        this.builder.appendIndices(this.linkCapsuleIndices());
        this.builder.appendIndices(this.linkEndIndices(this.builder.getVerticesCount() - 1, (this.endXStepCount - 1) * 2 + this.cylinderStepCount - 1, true));
        this.builder.appendIndices(this.linkEndIndices(this.builder.getVerticesCount() - 2, 0, false));
        if (this.builder.isValid()) {
            this.meshVisual.mesh = this.builder.getMesh();
            this.builder.updateMesh();
        }
        else {
            throw new Error("Invalid mesh, check parameters to ensure positive whole numbers for vertex counts!");
        }
    }
    setLength(newLength) {
        this.capsuleLength = newLength;
        this.buildCapsule();
    }
    setRadius(newRadius) {
        this.radius = newRadius;
        this.buildCapsule();
    }
    setRadianStepCount(newCount) {
        this.radianStepCount = newCount;
        this.buildCapsule();
    }
    setCylinderStepCount(newCount) {
        this.cylinderStepCount = newCount;
        this.buildCapsule();
    }
    setEndXStepCount(newCount) {
        this.endXStepCount = newCount;
        this.buildCapsule();
    }
    __initialize() {
        super.__initialize();
        this.uLength = Math.PI * this.radius * this.radius;
        this.endPointNormals = [1, 0, 0, -1, 0, 0];
        this.endPointUVs = [0, 0.5, 0.5, 0.5];
        this.builder = new MeshBuilder([
            { name: "position", components: 3 },
            { name: "normal", components: 3, normalized: true },
            { name: "texture0", components: 2 }
        ]);
    }
};
exports.CapsuleMeshCustomizer = CapsuleMeshCustomizer;
exports.CapsuleMeshCustomizer = CapsuleMeshCustomizer = __decorate([
    component
], CapsuleMeshCustomizer);
//# sourceMappingURL=CapsuleMeshCustomizer.js.map
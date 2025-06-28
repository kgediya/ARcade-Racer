"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Bitmoji3D = void 0;
var __selfType = requireType("./Bitmoji 3D");
function component(target) { target.getTypeName = function () { return __selfType; }; }
// Bitmoji3D.ts
const EventModule_1 = require("./Modules/EventModule");
var BitmojiOwnerType;
(function (BitmojiOwnerType) {
    BitmojiOwnerType[BitmojiOwnerType["NONE"] = -1] = "NONE";
    BitmojiOwnerType[BitmojiOwnerType["ME"] = 0] = "ME";
    BitmojiOwnerType[BitmojiOwnerType["FRIENDBYINDEX"] = 1] = "FRIENDBYINDEX";
    BitmojiOwnerType[BitmojiOwnerType["AI"] = 2] = "AI";
})(BitmojiOwnerType || (BitmojiOwnerType = {}));
let Bitmoji3D = class Bitmoji3D extends BaseScriptComponent {
    onAwake() {
        this.createEvent("OnDestroyEvent").bind(this.onDestroy.bind(this));
        this.createEvent("OnStartEvent").bind(this.onStart.bind(this));
    }
    onStart() {
        if (this.autoDownload && this.bitmojiType !== BitmojiOwnerType.NONE && !this.isLoading) {
            this.downloadAvatar();
        }
    }
    async downloadAvatar() {
        try {
            const user = await this.getSnapchatUser();
            await this.downloadAvatarForUser(user);
        }
        catch (e) {
            this.onDownloadFailedCallback(e);
        }
    }
    async downloadAvatarForUser(snapchatUser) {
        if (this.isLoading) {
            this.debugPrint("Warning", "Loading in process");
            return;
        }
        if (this.avatar) {
            this.debugPrint("Warning", "Bitmoji avatar exists, deleting existing one.");
            this.onDestroy();
        }
        this.isLoading = true;
        const options = this.createOptions(snapchatUser);
        try {
            const bitmoji3DResource = await this.getBitmojiResource(options);
            const gltfAsset = await this.downloadGLTFAsset(bitmoji3DResource);
            const sceneObject = await this.instantiateGLTFAssetAsync(gltfAsset);
            this.onDownloadSucceeded(sceneObject);
        }
        catch (e) {
            this.onDownloadFailedCallback(e);
        }
    }
    createOptions(snapchatUser) {
        let options = Bitmoji3DOptions.create();
        if (snapchatUser != null) {
            this.user = snapchatUser;
            options.user = this.user;
        }
        const components = this.thisObject.getComponents("Component.ScriptComponent");
        // Filter components that match the Bitmoji3DAvatarOverride interface
        components
            .filter(component => typeof component.modifyBitmoji3DOptions === 'function')
            .forEach((component) => {
            component.modifyBitmoji3DOptions(options);
        });
        return options;
    }
    async getSnapchatUser() {
        return new Promise((resolve, reject) => {
            switch (this.bitmojiType) {
                case BitmojiOwnerType.ME:
                    resolve(null);
                    break;
                case BitmojiOwnerType.FRIENDBYINDEX:
                    if (this.friendsComponent && this.friendsComponent.friends) {
                        this.friendsComponent.friends().then((users) => {
                            const friend = this.friendWithIndexExists(users, this.friendIndex);
                            if (friend != null) {
                                resolve(friend);
                            }
                            else {
                                reject(`Friend with index ${this.friendIndex} doesn't exist for this user`);
                            }
                        }).catch(() => {
                            reject('Failed to fetch user');
                        });
                    }
                    else {
                        global.userContextSystem.getAllFriends((users) => {
                            const friend = this.friendWithIndexExists(users, this.friendIndex);
                            if (friend != null) {
                                resolve(friend);
                            }
                            else {
                                reject(`Friend with index ${this.friendIndex} doesn't exist for this user`);
                            }
                        });
                    }
                    break;
                case BitmojiOwnerType.AI:
                    global.userContextSystem.getMyAIUser((user) => {
                        resolve(user);
                    });
                    break;
            }
        });
    }
    friendWithIndexExists(friends, index) {
        const usersWithBitmoji = friends.filter(user => user.hasBitmoji);
        return usersWithBitmoji.length > index ? friends[index] : null;
    }
    getBitmojiResource(options) {
        return new Promise((resolve, reject) => {
            try {
                if (options != null) {
                    this.bitmojiModule.requestBitmoji3DResourceWithOptions(options, resolve);
                }
                else {
                    this.bitmojiModule.requestBitmoji3DResource(resolve);
                }
            }
            catch (e) {
                reject(e);
            }
        });
    }
    downloadGLTFAsset(bitmoji3DResource) {
        return new Promise((resolve, reject) => {
            this.remoteMediaModule.loadResourceAsGltfAsset(bitmoji3DResource, resolve, reject);
        });
    }
    instantiateGLTFAssetAsync(gltfAsset) {
        return new Promise((resolve, reject) => {
            this.bitmojiGltfAsset = gltfAsset;
            const settings = GltfSettings.create();
            settings.convertMetersToCentimeters = true;
            settings.optimizeGeometry = true;
            settings.storeTriangleOrder = true;
            gltfAsset.tryInstantiateAsync(this.thisObject, this.materialHolder, resolve, reject, this.onLoadingUpdate, settings);
        });
    }
    onDownloadFailedCallback(e) {
        this.debugPrint("Error downloading", e);
        this.onDownloadFailed.trigger();
        this.isLoading = false;
    }
    onDownloadSucceeded(sceneObject) {
        if (this.avatar) {
            this.onDestroy();
        }
        this.debugPrint("Info", "Bitmoji avatar downloaded.");
        this.avatar = sceneObject;
        this.processAvatar();
        this.isLoading = false;
        this.onDownloaded.trigger(this.avatar);
    }
    onLoadingUpdate(status) {
        // debugPrint("Loading", status.toFixed(2));
    }
    processAvatar() {
        this.bitmojiMeshes = {};
        this.bitmojiJoints = {};
        this.buildJointMap(this.bitmojiJoints, this.avatar);
        const layer = this.thisObject.layer;
        Object.values(this.bitmojiMeshes).forEach(rmv => {
            rmv.sceneObject.layer = layer;
            rmv.meshShadowMode = this.castShadow ? MeshShadowMode.Caster : MeshShadowMode.None;
            rmv.setRenderOrder(this.renderOrder);
        });
        if (this.mixamoAnimation) {
            this.remap();
            this.addScaleCompensation();
        }
        this.avatar.setParent(this.thisObject);
        // apply overrides 
        const components = this.thisObject.getComponents("Component.ScriptComponent");
        // Filter components that match the Bitmoji3DAvatarOverride interface
        components
            .filter(component => typeof component.modifyBitmoji3DAvatar === 'function')
            .forEach((component) => {
            component.modifyBitmoji3DAvatar(this);
        });
    }
    remap() {
        for (const joint in this.bitmojiJoints) {
            if (this.mixamoBitmojiMap[joint]) {
                this.bitmojiJoints[joint].name = this.mixamoBitmojiMap[joint];
            }
        }
    }
    addScaleCompensation() {
        const bmRoot = this.bitmojiJoints["ROOT"];
        const so = global.scene.createSceneObject("Hips_SSC_Mixamo");
        so.setParent(bmRoot.getParent());
        so.getTransform().setLocalScale(vec3.one().uniformScale(0.01));
        const scale = bmRoot.getTransform().getLocalScale();
        bmRoot.getTransform().setLocalScale(scale.uniformScale(100));
        bmRoot.setParent(so);
    }
    buildJointMap(m, root) {
        for (let i = 0; i < root.getChildrenCount(); i++) {
            const child = root.getChild(i);
            const rmv = child.getComponent("RenderMeshVisual");
            if (rmv) {
                this.bitmojiMeshes[child.name] = rmv;
            }
            m[child.name] = child;
            this.buildJointMap(m, child);
        }
    }
    debugPrint(prefix, message) {
        if (this.printDebug) {
            print(`${prefix}: ${message}`);
        }
    }
    onDestroy() {
        if (!isNull(this.avatar)) {
            this.avatar.destroy();
        }
        this.bitmojiJoints = {};
        this.bitmojiMeshes = {};
        this.bitmojiGltfAsset = {};
    }
    download() {
        this.downloadAvatar();
    }
    getUser() {
        return this.user;
    }
    getExtras() {
        return this.bitmojiGltfAsset ? this.bitmojiGltfAsset.extras : null;
    }
    getAvatar() {
        return this.avatar;
    }
    getRenderOrder() {
        return this.renderOrder;
    }
    setRenderOrder(v) {
        this.renderOrder = v;
        Object.values(this.bitmojiMeshes).forEach(rmv => {
            rmv.setRenderOrder(this.renderOrder);
        });
    }
    setShadowsEnabled(v) {
        this.castShadow = v;
        Object.values(this.bitmojiMeshes).forEach(rmv => {
            rmv.meshShadowMode = this.castShadow ? MeshShadowMode.Caster : MeshShadowMode.None;
        });
    }
    getShadowsEnabled() {
        return this.castShadow;
    }
    setRenderLayer(v) {
        this.thisObject.layer = v;
        Object.values(this.bitmojiMeshes).forEach(rmv => {
            rmv.sceneObject.layer = v;
        });
    }
    getRenderLayer() {
        return this.thisObject.layer;
    }
    __initialize() {
        super.__initialize();
        this.remoteMediaModule = require('LensStudio:RemoteMediaModule');
        this.bitmojiModule = require('LensStudio:BitmojiModule');
        this.thisObject = this.sceneObject;
        this.avatar = null;
        this.bitmojiJoints = {};
        this.bitmojiMeshes = {};
        this.bitmojiGltfAsset = null;
        this.isLoading = false;
        this.mixamoBitmojiMap = {
            "ROOT": "Hips",
            "C_spine0001_bind_JNT": "Spine",
            "C_spine0003_bind_JNT": "Spine1",
            "C_neck0001_bind_JNT": "Neck",
            "C_head_bind_JNT": "Head",
            "R_clavicle_bind_JNT": "RightShoulder",
            "R_armUpper0001_bind_JNT": "RightArm",
            "R_armLower0001_bind_JNT": "RightForeArm",
            "R_hand0001_bind_JNT": "RightHand",
            "L_clavicle_bind_JNT": "LeftShoulder",
            "L_armUpper0001_bind_JNT": "LeftArm",
            "L_armLower0001_bind_JNT": "LeftForeArm",
            "L_hand0001_bind_JNT": "LeftHand",
            "L_legUpper0001_bind_JNT": "LeftUpLeg",
            "L_legLower0001_bind_JNT": "LeftLeg",
            "L_foot0001_bind_JNT": "LeftFoot",
            "L_foot0002_bind_JNT": "LeftToeBase",
            "R_legUpper0001_bind_JNT": "RightUpLeg",
            "R_legLower0001_bind_JNT": "RightLeg",
            "R_foot0001_bind_JNT": "RightFoot",
            "R_foot0002_bind_JNT": "RightToeBase",
        };
        this.onDownloaded = new EventModule_1.EventWrapper();
        this.onDownloadFailed = new EventModule_1.EventWrapper();
    }
};
exports.Bitmoji3D = Bitmoji3D;
exports.Bitmoji3D = Bitmoji3D = __decorate([
    component
], Bitmoji3D);
//# sourceMappingURL=Bitmoji%203D.js.map
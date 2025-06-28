// Bitmoji3D.ts

import { EventWrapper } from './Modules/EventModule'
import { Bitmoji3DOptionsOverride, Bitmoji3DAvatarOverride } from './Modules/Bitmoji3DOverrideInterface'

enum BitmojiOwnerType {
    NONE = -1,
    ME = 0,
    FRIENDBYINDEX = 1,
    AI = 2
}
@component
export class Bitmoji3D extends BaseScriptComponent {

    @input
    @widget(
        new ComboBoxWidget([
            new ComboBoxItem('None', -1),
            new ComboBoxItem('Me', 0),
            new ComboBoxItem('My Friend', 1),
            new ComboBoxItem('My AI', 2)
        ])
    )
    bitmojiType: number = 0;

    @input('Component')
    @showIf('bitmojiType', '1')
    @hint('Optional: \nInstall Friends Custom Component from Asset Library\nAdd it to Scene \nReference added component here')
    @allowUndefined
    friendsComponent = undefined

    @input('int')
    @showIf('bitmojiType', '1')
    friendIndex: number = 0


    @ui.separator
    @input
    @hint("Adapt to a Mixamo style rig")
    @label('Adapt to Mixamo')
    mixamoAnimation: boolean = true

    @ui.separator
    @input
    @hint('download using Bitmoji.download() api instead')
    autoDownload: boolean = true

    @ui.separator
    @input('int')
    renderOrder: number = 0;

    @input
    @hint('To see this in action add shadow plane and enable shadows on the light source')
    castShadow: boolean = true;


    private remoteMediaModule: RemoteMediaModule = require('LensStudio:RemoteMediaModule')
    private bitmojiModule: BitmojiModule = require('LensStudio:BitmojiModule')

    @input
    materialHolder: Material

    @input
    printDebug: boolean = true

    private thisObject: SceneObject = this.sceneObject;
    private avatar: SceneObject | null = null;
    private bitmojiJoints: { [key: string]: SceneObject } = {};
    private bitmojiMeshes: { [key: string]: RenderMeshVisual } = {};
    private bitmojiGltfAsset: GltfAsset = null;
    private user: SnapchatUser | undefined;

    private isLoading: boolean = false;

    private mixamoBitmojiMap: { [key: string]: string } = {
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

    public onDownloaded: EventWrapper = new EventWrapper();
    public onDownloadFailed: EventWrapper = new EventWrapper();


    onAwake() {
        this.createEvent("OnDestroyEvent").bind(this.onDestroy.bind(this));
        this.createEvent("OnStartEvent").bind(this.onStart.bind(this));
    }

    private onStart() {
        if (this.autoDownload && this.bitmojiType !== BitmojiOwnerType.NONE && !this.isLoading) {
            this.downloadAvatar();
        }
    }

    public async downloadAvatar() {
        try {
            const user = await this.getSnapchatUser();
            await this.downloadAvatarForUser(user);
        } catch (e) {
            this.onDownloadFailedCallback(e);
        }
    }

    public async downloadAvatarForUser(snapchatUser: SnapchatUser) {
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
        } catch (e) {
            this.onDownloadFailedCallback(e);
        }
    }

    private createOptions(snapchatUser: SnapchatUser | null): Bitmoji3DOptions {
        let options = Bitmoji3DOptions.create();
        if (snapchatUser != null) {
            this.user = snapchatUser;
            options.user = this.user;
        }

        const components = this.thisObject.getComponents("Component.ScriptComponent");

        // Filter components that match the Bitmoji3DAvatarOverride interface
        components
            .filter(component => typeof (component as Bitmoji3DOptionsOverride).modifyBitmoji3DOptions === 'function')
            .forEach((component: Bitmoji3DOptionsOverride) => {
                component.modifyBitmoji3DOptions(options);
            });

        return options;
    }

    private async getSnapchatUser(): Promise<SnapchatUser> {
        return new Promise((resolve, reject) => {
            switch (this.bitmojiType) {
                case BitmojiOwnerType.ME:
                    resolve(null);
                    break;
                case BitmojiOwnerType.FRIENDBYINDEX:
                    if (this.friendsComponent && this.friendsComponent.friends) {
                        this.friendsComponent.friends().then((users: SnapchatUser[]) => {
                            const friend = this.friendWithIndexExists(users, this.friendIndex);
                            if (friend != null) {
                                resolve(friend);
                            } else {
                                reject(`Friend with index ${this.friendIndex} doesn't exist for this user`);
                            }
                        }).catch(() => {
                            reject('Failed to fetch user');
                        });
                    } else {
                        global.userContextSystem.getAllFriends((users: SnapchatUser[]) => {
                            const friend = this.friendWithIndexExists(users, this.friendIndex);
                            if (friend != null) {
                                resolve(friend);
                            } else {
                                reject(`Friend with index ${this.friendIndex} doesn't exist for this user`);
                            }
                        });
                    }
                    break;
                case BitmojiOwnerType.AI:
                    global.userContextSystem.getMyAIUser((user: SnapchatUser) => {
                        resolve(user);
                    });
                    break;
            }
        });
    }

    private friendWithIndexExists(friends: SnapchatUser[], index: number): SnapchatUser | null {
        const usersWithBitmoji = friends.filter(user => user.hasBitmoji);
        return usersWithBitmoji.length > index ? friends[index] : null;
    }

    private getBitmojiResource(options: Bitmoji3DOptions): Promise<Bitmoji3DResource> {
        return new Promise((resolve, reject) => {
            try {
                if (options != null) {
                    this.bitmojiModule.requestBitmoji3DResourceWithOptions(options, resolve);
                } else {
                    this.bitmojiModule.requestBitmoji3DResource(resolve);
                }
            } catch (e) {
                reject(e);
            }
        });
    }

    private downloadGLTFAsset(bitmoji3DResource: Bitmoji3DResource): Promise<GltfAsset> {
        return new Promise((resolve, reject) => {
            this.remoteMediaModule.loadResourceAsGltfAsset(
                bitmoji3DResource,
                resolve,
                reject
            );
        });
    }

    private instantiateGLTFAssetAsync(gltfAsset: GltfAsset): Promise<SceneObject> {
        return new Promise((resolve, reject) => {
            this.bitmojiGltfAsset = gltfAsset;
            const settings = GltfSettings.create();
            settings.convertMetersToCentimeters = true;
            settings.optimizeGeometry = true;
            settings.storeTriangleOrder = true;
            gltfAsset.tryInstantiateAsync(this.thisObject, this.materialHolder, resolve, reject, this.onLoadingUpdate, settings);
        });
    }

    private onDownloadFailedCallback(e: string) {
        this.debugPrint("Error downloading", e);
        this.onDownloadFailed.trigger();
        this.isLoading = false;
    }

    private onDownloadSucceeded(sceneObject: SceneObject) {
        if (this.avatar) {
            this.onDestroy();
        }
        this.debugPrint("Info", "Bitmoji avatar downloaded.");
        this.avatar = sceneObject;
        this.processAvatar();
        this.isLoading = false;
        this.onDownloaded.trigger(this.avatar);
    }

    private onLoadingUpdate(status: number) {
        // debugPrint("Loading", status.toFixed(2));
    }

    private processAvatar() {
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
            .filter(component => typeof (component as Bitmoji3DAvatarOverride).modifyBitmoji3DAvatar === 'function')
            .forEach((component: Bitmoji3DAvatarOverride) => {
                component.modifyBitmoji3DAvatar(this);
            });
    }

    private remap() {
        for (const joint in this.bitmojiJoints) {
            if (this.mixamoBitmojiMap[joint]) {
                this.bitmojiJoints[joint].name = this.mixamoBitmojiMap[joint];
            }
        }
    }

    private addScaleCompensation() {
        const bmRoot = this.bitmojiJoints["ROOT"];
        const so = global.scene.createSceneObject("Hips_SSC_Mixamo");
        so.setParent(bmRoot.getParent());

        so.getTransform().setLocalScale(vec3.one().uniformScale(0.01));
        const scale = bmRoot.getTransform().getLocalScale();
        bmRoot.getTransform().setLocalScale(scale.uniformScale(100));

        bmRoot.setParent(so);
    }

    private buildJointMap(m: { [key: string]: SceneObject }, root: SceneObject) {
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

    private debugPrint(prefix: string, message: any) {
        if (this.printDebug) {
            print(`${prefix}: ${message}`);
        }
    }

    private onDestroy() {
        if (!isNull(this.avatar)) {
            this.avatar.destroy();
        }
        this.bitmojiJoints = {};
        this.bitmojiMeshes = {};
        this.bitmojiGltfAsset = {} as GltfAsset;
    }

    public download() {
        this.downloadAvatar()
    }

    public getUser(): SnapchatUser | undefined {
        return this.user;
    }

    public getExtras(): any {
        return this.bitmojiGltfAsset ? this.bitmojiGltfAsset.extras : null;
    }

    public getAvatar(): SceneObject | null {
        return this.avatar;
    }

    public getRenderOrder(): number {
        return this.renderOrder;
    }

    public setRenderOrder(v: number) {
        this.renderOrder = v;
        Object.values(this.bitmojiMeshes).forEach(rmv => {
            rmv.setRenderOrder(this.renderOrder);
        });
    }

    public setShadowsEnabled(v: boolean) {
        this.castShadow = v;
        Object.values(this.bitmojiMeshes).forEach(rmv => {
            rmv.meshShadowMode = this.castShadow ? MeshShadowMode.Caster : MeshShadowMode.None;
        });
    }

    public getShadowsEnabled(): boolean {
        return this.castShadow;
    }

    public setRenderLayer(v: LayerSet) {
        this.thisObject.layer = v;
        Object.values(this.bitmojiMeshes).forEach(rmv => {
            rmv.sceneObject.layer = v;
        });
    }

    public getRenderLayer(): LayerSet {
        return this.thisObject.layer;
    }
}
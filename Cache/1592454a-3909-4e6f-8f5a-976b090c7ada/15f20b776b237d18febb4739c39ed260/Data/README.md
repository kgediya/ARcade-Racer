# Bitmoji 3D 

You can add a 3D Bitmoji avatar representing the user as well as their friends. 

Read more on [developers.snap.com](https://developers.snap.com/lens-studio/features/bitmoji-avatar/bitmoji-3d)

### Inputs

| Input Name       | Type    | Default | Description                                                                                                                                              |
|------------------|---------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Bitmoji Owner**    | number  | 0       | Specifies owner of Bitmoji: None, Me, My Friend or My AI.                                                                       |
| **friendsComponent**| Component | undefined | allows to plug in a Friends Component that allows to create a custom list of friends - for example sort them by last talked to, duration of friendship, etc. Use with My Friend owner.                                                                                  |
| **friendIndex**    | number  | 0       | Index of friend's Bitmoji when **bitmojiType** is **My Friend**.                                                                                                      |
| **mixamoAnimation**| boolean | true    | Determines adaptation to a Mixamo style rig.                                                                                                             |
| **autoDownload**   | boolean | true    | Specifies if automatic avatar download is enabled using **Bitmoji.download()** API.                                                                       |
| **renderOrder**    | number  | 0       | Sets the rendering order for the Bitmoji.                                                                                                               |
| **castShadow**     | boolean | true    | Enables or disables shadow casting for the Bitmoji.                                                                                                               |

### Methods

| Method Name                             | Description                                                                                                  |
|-----------------------------------------|--------------------------------------------------------------------------------------------------------------| 
| **downloadAvatar()**:void                      | Initiates avatar download using user information.                                                            |
| **downloadAvatarForUser(snapchatUser :SnapchatUser)**   | Downloads Bitmoji for a user and initializes it within the scene.                                             |
| **onDownloaded**:EventWrapper             | Allows to add callback when Bitmoji Avatar was successfully downloaded                                        |
| **onDownloadFailed**:EventWrapper          | Allows to add callback when Bitmoji Avatar download has failed                                            |
| **getUser()**:SnapchatUser                             | Returns the user associated with the current Bitmoji.                                                        |
| **getExtras()**:string                            | Retrieves extras data from the GLTF asset.                                                                    |
| **getRenderOrder()**:number                | Returns the current rendering order.                                                                         |
| **setRenderOrder(v:number)**                 | Sets a new rendering order for avatar meshes.                                                                |
| **setShadowsEnabled(v:boolean)**:boolean                  | Enables or disables shadow casting on avatar meshes.                                                         |
| **getShadowsEnabled()**:boolean                  | Returns current shadow casting state.                                                                        |
| **setRenderLayer(v:LayerSet)**                     | Assigns a specific layer set to the Bitmoji and its components.                                              |
| **getRenderLayer()**:LayerSet                | Returns the current render layer of the Bitmoji.                                                             |

export interface Bitmoji3DOptionsOverride extends ScriptComponent {
  modifyBitmoji3DOptions: (options: Bitmoji3DOptions) => Bitmoji3DOptions;
}

export interface Bitmoji3DAvatarOverride extends ScriptComponent {
  modifyBitmoji3DAvatar: (bitmoji: { getUser(), getAvatar() }) => void;
}
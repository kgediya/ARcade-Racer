const collider = script.getSceneObject().getComponent('Physics.ColliderComponent');
//@input Component.Text debugText
if(collider){
    print("COLLISION READY")
    collider.onCollisionEnter.add(function(eventArgs) {
    var collision = eventArgs.collision;
    print("CollisionEnter(" + collision.id + "): contacts=" + collision.contactCount + " ---> " + collision.collider.getSceneObject().name);
});
}
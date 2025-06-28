const collider = script.getSceneObject().getComponent('Physics.ColliderComponent');

if(collider){
    collider.onCollisionEnter.add(function(eventArgs) {
    var collision = eventArgs.collision;
    print("CollisionEnter(" + collision.id + "): contacts=" + collision.contactCount + " ---> " + collision.collider.getSceneObject().name);
});
}
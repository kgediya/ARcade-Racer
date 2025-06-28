const collider = script.getSceneObject().getComponent('Physics.ColliderComponent');
//@input Component.Text debugText
if(collider){
  script.debugText.text=("COLLISION READY")
    collider.onCollisionEnter.add(function(eventArgs) {
    var collision = eventArgs.collision;
    script.debugText.text = ("CollisionEnter(" + collision.id + "): contacts=" + collision.contactCount + " ---> " + collision.collider.getSceneObject().name);
});
}
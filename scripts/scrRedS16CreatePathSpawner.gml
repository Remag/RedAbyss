var path = argument0;

var spawner = instance_create( 0, 0, oRedS16PathSpawner );
with( spawner ) {
    path_start( path, 25, path_action_stop, true );
}

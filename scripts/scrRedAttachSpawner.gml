/// scrRedAttachSpawner( ownerId, spawnPeriod, spawnObject, opt_spawnDuration )

var ownerId = argument[0];
var spawnPeriod = argument[1];
var spawnObject = argument[2];
var spawnDuration = -1;
if( argument_count > 3 ) {
    spawnDuration = argument[4];
}

with( ownerId ) {
    var spawner = instance_create( x, y, oRedAttachedSpawner );
    spawner.SpawnObject = spawnObject;
    spawner.SpawnPeriod = spawnPeriod;
    spawner.CurrentPeriod = 0;
    spawner.OwnerInstance = id;
    spawner.alarm[11] = spawnDuration;
    Spawner = spawner;
}

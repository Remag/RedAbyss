/// scrRedAttachCustomSpawner( ownerId, spawnPeriod, spawnerId, opt_spawnDuration )
var ownerId = argument[0];
var spawnPeriod = argument[1];
var spawnerId = argument[2];
var spawnDuration = -1;
if( argument_count > 3 ) {
    spawnDuration = argument[3];
}

var spawner = noone;
with( ownerId ) {
    if( script_exists( spawnerId ) ) {
        spawner = instance_create( x, y, oRedAttachedScriptSpawner );
        spawner.SpawnScript = spawnerId;
    } else {
        spawner = instance_create( x, y, spawnerId );
    }
    spawner.SpawnPeriod = spawnPeriod;
    spawner.CurrentPeriod = 0;
    spawner.OwnerInstance = id;
    spawner.alarm[11] = spawnDuration;
    Spawner = spawner;
}
return spawner;

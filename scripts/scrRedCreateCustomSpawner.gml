/// scrRedCreateCustomSpawner( spawnX, spawnY, spawnPeriod, spawnerObject, opt_spawnDuration )
var spawnX = argument[0];
var spawnY = argument[1];
var spawnPeriod = argument[2];
var spawnerId = argument[3];
var spawnDuration = -1;
if( argument_count > 4 ) {
    spawnDuration = argument[4];
}

var spawner;
if( script_exists( spawnerId ) ) {
    spawner = instance_create( spawnX, spawnY, oRedScriptSpawner );
    spawner.SpawnScript = spawnerId;
} else {
    spawner = instance_create( spawnX, spawnY, spawnerId );
}
spawner.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = 0;
spawner.alarm[11] = spawnDuration;

return spawner;

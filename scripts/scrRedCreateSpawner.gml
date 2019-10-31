/// scrRedCreateSpawner( spawnX, spawnY, spawnPeriod, spawnObject, opt_spawnDuration )
var spawnX = argument[0];
var spawnY = argument[1];
var spawnPeriod = argument[2];
var spawnObject = argument[3];
var spawnDuration = -1;
if( argument_count > 4 ) {
    spawnDuration = argument[4];
}

var spawner = instance_create( spawnX, spawnY, oRedProjectileSpawner );
spawner.SpawnObject = spawnObject;
spawner.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = 0;
spawner.alarm[11] = spawnDuration;

return spawner;

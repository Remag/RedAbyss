var spawnX = argument0;
var spawnY = argument1;
var spawnPeriod = argument2;
var spawnObject = argument3;

var spawner = instance_create( spawnX, spawnY, oRedProjectileSpawner );
spawner.SpawnObject = spawnObject;
spawner.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = 0;

return spawner;

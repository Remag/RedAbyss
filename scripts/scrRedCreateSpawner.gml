var spawnX = argument0;
var spawnY = argument1;
var spawnPeriod = argument2;
var spawnObject = argument3;

var spawner = instance_create( spawnX, spawnY, oRedProjectileSpawner );
spawner.SpawnObject = spawnObject;
spawer.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = spawnPeriod;

return spawner;

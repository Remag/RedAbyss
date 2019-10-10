var ownerInstance = argument0;
var spawnPeriod = argument1;
var spawnObject = argument2;

var spawner = instance_create( 0, 0, oRedAttachedSpawner );
spawner.SpawnObject = spawnObject;
spawer.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = spawnPeriod;
spawner.OwnerInstance = ownerInstance;

return spawner;

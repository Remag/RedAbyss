/// scrRedAttachSpawner( ownerId, spawnPeriod, spawnObject )

var ownerInstance = argument0;
var spawnPeriod = argument1;
var spawnObject = argument2;

var spawner = instance_create( ownerInstance.x, ownerInstance.y, oRedAttachedSpawner );
spawner.SpawnObject = spawnObject;
spawner.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = 0;
spawner.OwnerInstance = ownerInstance;

return spawner;

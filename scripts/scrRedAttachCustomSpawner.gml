/// scrRedAttachSpawner( ownerId, spawnPeriod, spawnerObject )

var ownerInstance = argument0;
var spawnPeriod = argument1;
var spawnerObject = argument2;

var spawner = instance_create( ownerInstance.x, ownerInstance.y, spawnerObject );
spawner.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = 0;
spawner.OwnerInstance = ownerInstance;

return spawner;

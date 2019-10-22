var spawnX = argument0;
var spawnY = argument1;
var spawnPeriod = argument2;
var spawnerObject = argument3;

var spawner = instance_create( spawnX, spawnY, spawnerObject );
spawner.SpawnPeriod = spawnPeriod;
spawner.CurrentPeriod = 0;

return spawner;

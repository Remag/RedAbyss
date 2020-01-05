var spawnX = argument0;
var mainDir = argument1;
var spawnPeriod = argument2;
var imageMin = argument3;
var imageMax = argument4;

var spawner = scrRedCreateCustomSpawner( spawnX, 0, spawnPeriod, scrRedS11SpawnTideBullet );
spawner.MainSpawnDir = mainDir;
spawner.ImageMin = imageMin;
spawner.ImageMax = imageMax;


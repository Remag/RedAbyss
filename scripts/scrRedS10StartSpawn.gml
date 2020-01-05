var dir = argument0;
var period = argument1;
var imageMin = argument2;
var imageMax = argument3;

var spawner = scrRedCreateCustomSpawner( 0, 0, period, scrRedS10SpawnDiagonal );
spawner.SpawnDir = dir;
spawner.ImageMin = imageMin;
spawner.ImageMax = imageMax;

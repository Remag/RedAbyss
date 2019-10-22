/// scrRedCreateBloomCircle( spawnX, spawnY, bulletCount, spawnPeriod, imageIndex1, imageIndex2 )
var spawnX = argument0;
var spawnY = argument1;
var bulletCount = argument2;
var spawnPeriod = argument3;
var imageIndex1 = argument4;
var imageIndex2 = argument5;

var angle = scrRedDirToPlayer( spawnX, spawnY );

var params1 = scrRedCreateCircleAdditionalParams();
params1.ImageIndex = imageIndex1;
params1.Amplitude = 30;
params1.Frequency = 0.024;
params1.StepDelta = 6;
params1.SpawnPeriod = spawnPeriod;
scrRedInitializeCircle( spawnX, spawnY, angle, bulletCount, oRedS2SeedBullet, params1 );

var params2 = scrRedCreateCircleAdditionalParams();
params2.ImageIndex = imageIndex2;
params2.Amplitude = -30;
params2.Frequency = 0.024;
params2.StepDelta = 6;
params2.SpawnPeriod = spawnPeriod;
scrRedInitializeCircle( spawnX, spawnY, angle, bulletCount, oRedS2SeedBullet, params2 );

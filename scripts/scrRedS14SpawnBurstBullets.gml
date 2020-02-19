var sectorCount = 5;
var sectorDirDelta = 360 / ( 2 * sectorCount );
var playerDir = scrRedDirToPlayer( x, y );
var currentDir = playerDir + sectorDirDelta * 2 * DirIndex;
var bulletDir = random_range( currentDir - sectorDirDelta, currentDir + sectorDirDelta );
var bullet1 = instance_create( x, y, oRedS14BurstBullet );
bullet1.direction = bulletDir;
var bullet2 = instance_create( x, y, oRedS14BurstBullet );
bullet2.direction = bulletDir + 45;
var bullet3 = instance_create( x, y, oRedS14BurstBullet );
bullet3.direction = bulletDir - 45;

DirIndex++;


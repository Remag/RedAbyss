var sectorCount = 4;
var sectorDirDelta = 360 / ( 2 * sectorCount );
var playerDir = scrRedDirToPlayer( x, y );
var currentDir = playerDir + sectorDirDelta * 2 * DirIndex;
var bullet = instance_create( x, y, oRedS9DualBullet );
bullet.direction = random_range( currentDir - sectorDirDelta, currentDir + sectorDirDelta );
bullet.image_angle = bullet.direction;

DirIndex++;



var sectorCount = 6;
var sectorDirDelta = 360 / ( 2 * sectorCount );
var playerDir = scrRedDirToPlayer( x, y );
var currentDir = playerDir + sectorDirDelta * 2 * DirIndex;
var bullet = instance_create( x, y, oRedS15FinalBurstBullet );
bullet.direction = random_range( currentDir - sectorDirDelta, currentDir + sectorDirDelta );
bullet.speed = random_range( MinSpeed, MaxSpeed );
scrRedAttachTrail( bullet, round( TrailCount ) );

DirIndex++;

MinSpeed += 0.090;
MaxSpeed += 0.090;
TrailCount += 0.01;

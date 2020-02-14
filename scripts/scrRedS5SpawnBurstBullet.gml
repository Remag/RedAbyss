if( live_call() ) {
    return live_result;
}

var sectorCount = 4;
var count = SpawnCount / sectorCount;
var sectorDirDelta = 360 / ( 2 * sectorCount );
var currentDir = scrRedDirToPlayer( x, y );
for( var i = 0; i < sectorCount; i++ ) {
    repeat( count ) {
        var bullet = instance_create( x, y, oRedS5BurstBullet );
        bullet.speed = random_range( SpeedMin, SpeedMax );
        bullet.direction = random_range( currentDir - sectorDirDelta, currentDir + sectorDirDelta );
        scrRedAttachTrail( bullet, TrailLength );
        currentDir += 2 * sectorDirDelta;
    }
}

scrRedChangeInstanceAlpha( oRedS5SourceBullet, 1, 15, scrRedTweenBackForth );

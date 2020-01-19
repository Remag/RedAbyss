var hCount = SpawnCount / 2;
repeat( ceil( hCount ) ) {
    var bullet = instance_create( x, y, oRedS5BurstBullet );
    bullet.speed = random_range( SpeedMin, SpeedMax );
    bullet.direction = random_range( 0, 180 );
    scrRedAttachTrail( bullet, TrailLength );
}
repeat( floor( hCount ) ) {
    var bullet = instance_create( x, y, oRedS5BurstBullet );
    bullet.speed = random_range( SpeedMin, SpeedMax );
    bullet.direction = random_range( 180, 360 );
    scrRedAttachTrail( bullet, TrailLength );
}

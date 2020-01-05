var hCount = round( SpawnCount / 2 );
repeat( hCount ) {
    var bullet = instance_create( x, y, oRedS5BurstBullet );
    bullet.speed = random_range( SpeedMin, SpeedMax );
    bullet.direction = random_range( 0, 180 );
}
repeat( hCount ) {
    var bullet = instance_create( x, y, oRedS5BurstBullet );
    bullet.speed = random_range( SpeedMin, SpeedMax );
    bullet.direction = random_range( 180, 360 );
}

var centerDir = point_direction( 400, 303, x, y );
for( var dir = centerDir - 60; dir <= centerDir + 60; dir += 20 ) {
    var bullet = instance_create( x, y, oRedS13CircleBullet );
    bullet.direction = dir;
    bullet.speed = 7.5;
}

var rngDir = centerDir + 180 + random_range( -90, 90 );
for( var dir = rngDir - 90; dir <= rngDir + 90; dir += 180 ) {
    var bullet = instance_create( x, y, oRedS13CircleBullet );
    bullet.direction = dir;
    bullet.speed = 4;
}


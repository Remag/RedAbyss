
var playerDir = scrRedDirToPlayer( x, y ) + random_range( -30, 30 );

var lineCount = 6;
var speedDelta = 1;
var currentSpeed = 7;
repeat( lineCount ) {
    var line = instance_create( x, y, oRedS16LineBullet );
    line.direction = playerDir;
    line.speed = currentSpeed;
    currentSpeed -= speedDelta;
}

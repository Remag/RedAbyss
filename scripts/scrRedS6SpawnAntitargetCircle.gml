var playerDir;
if( !instance_exists( objPlayer ) ) {
    playerDir = random( 360 );   
} else {
    playerDir = point_direction( x, y, objPlayer.x, objPlayer.y + 9 );
}
var bulletCount = 10;
var dirDelta = 360 / ( 2 * bulletCount );
scrRedCreateCircle( x, y, playerDir + dirDelta, bulletCount, oRedS6TargetBullet );

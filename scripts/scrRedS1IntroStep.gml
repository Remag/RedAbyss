var t = argument0;

if( t == 8 || t == 73 || t == 94 || t == 160 || t == 182 || t == 247 ) {
    repeat( 2 ) {
        var spawnX = random_range( 64, 800 - 64 );
        var spawnY = 150;
        scrRedCreateCircle( spawnX, spawnY, random( 360 ), 35, oRedS1Bullet );
    }
}
if( t == 269 ) {
    var spawnX = random_range( 64, 800 - 64 );
    var spawnY = 150;
    var lCircle = scrRedCreateCircle( spawnX, spawnY, random( 360 ), 34, oRedS1CurvedBullet );
    lCircle.CurveDir = 2;
    spawnX = random_range( 64, 800 - 64 );
    var rCircle = scrRedCreateCircle( spawnX, spawnY, random( 360 ), 34, oRedS1CurvedBullet );
    rCircle.CurveDir = -2;
}

var spawnY = random_range( 608 - 64, 608 - 128 );
var bullet =  instance_create( x, spawnY, oRedS11TideBullet );
bullet.speed = 6;
bullet.direction = MainSpawnDir + random_range( -65, 65 );
bullet.gravity = 0.3;
var hue = random_range( HueMin, HueMax );
bullet.Hue = hue;
bullet.image_blend = make_color_hsv( hue, 242, 255 );

SpawnPeriod *= 1.03;

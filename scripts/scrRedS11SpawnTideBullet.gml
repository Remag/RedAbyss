var spawnY = random_range( 608 - 64, 608 - 128 );
var bullet =  instance_create( x, spawnY, oRedS11TideBullet );
bullet.speed = 6;
bullet.direction = MainSpawnDir + random_range( -65, 65 );
bullet.gravity = 0.3;
bullet.image_index = irandom_range( ImageMin, ImageMax );

SpawnPeriod *= 1.03;

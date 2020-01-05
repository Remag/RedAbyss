var spawnX = random_range( 48, 800 - 48 );
var spawnY = -150;

var bullet = instance_create( spawnX, spawnY, oRedS10DiagonalBullet );
bullet.direction = SpawnDir;
bullet.image_index = irandom_range( ImageMin, ImageMax );

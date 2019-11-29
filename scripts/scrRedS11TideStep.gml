#define scrRedS11TideStep
var t = argument0;

if( t == 5575 ) {
    scrRedS11CreateTideSpawner( 820, 180, 7, 6, 8 );
} else if( t == 5661 ) {
} else if( t == 5748 ) {
    scrRedDestroy( oRedScriptSpawner );
    scrRedS11CreateTideSpawner( -20, 0, 7, 1, 3 );
} else if( t == 5835 ) {

} else if( t == 5922 ) {
    scrRedDestroy( oRedScriptSpawner );
    scrRedS11CreateTideSpawner( 820, 180, 15, 6, 8 );
    scrRedS11CreateTideSpawner( -20, 0, 15, 1, 3 );
} else if( t == 6008 ) {
} else if( t == 6096 - 25 ) {
    scrRedDestroy( oRedScriptSpawner );
} else if( t == 6183 ) {
} else if( t == 6270 ) {
} 

#define scrRedS11CreateTideSpawner
var spawnX = argument0;
var mainDir = argument1;
var spawnPeriod = argument2;
var imageMin = argument3;
var imageMax = argument4;

var spawner = scrRedCreateCustomSpawner( spawnX, 0, spawnPeriod, scrRedS11SpawnTideBullet );
spawner.MainSpawnDir = mainDir;
spawner.ImageMin = imageMin;
spawner.ImageMax = imageMax;


#define scrRedS11SpawnTideBullet
var spawnY = random_range( 608 - 64, 608 - 128 );
var bullet =  instance_create( x, spawnY, oRedS11TideBullet );
bullet.speed = 6;
bullet.direction = MainSpawnDir + random_range( -65, 65 );
bullet.gravity = 0.3;
bullet.image_index = irandom_range( ImageMin, ImageMax );

SpawnPeriod *= 1.03;

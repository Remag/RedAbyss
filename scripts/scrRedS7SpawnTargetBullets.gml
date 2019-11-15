#define scrRedS7ClaustrophobiaStep
var t = argument0;

if( t == 3147 && !instance_exists( oRedS6AbyssSource ) ) {
    var targetSrc = instance_create( 400, 200, oRedS6TargetSource );
    targetSrc.AngleDelta = 1;
    var spawner = scrRedAttachCustomSpawner( targetSrc, 4, scrRedS6SpawnAntitargetCircle );
    spawner.SpriteIndex = sprRedAbyssGrad;
    var spiralSrc = instance_create( 400, 200, oRedS6SpiralSource );
    spiralSrc.AngleDelta = -1;
    with( oRedAbyssBackground ) {
        sprite_index = sprRedAbyssRedBackground;
    }
}

if( t == 3158 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 2, scrRedS7SpawnSpikeSpiral, 12 );
    spawner.TotalDirDelta = 360 / 9;
} else if( t == 3201 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 1.75, scrRedS7SpawnSpikeFan, 12 );
    spawner.TotalDirDelta = 360 / 9;
} else if( t == 3244 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var circleDir = random( 360 );
    var bulletCount = 30;
    scrRedCreateCircle( oRedS6TargetSource.x, oRedS6TargetSource.y, circleDir, bulletCount, oRedS7FastCircleSpike );
    scrRedCreateCircle( oRedS6TargetSource.x, oRedS6TargetSource.y, circleDir + bulletCount / 720, bulletCount, oRedS7SlowCircleSpike );
} else if( t == 3170 || t == 3213 || t == 3256 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedAbyssGrad;
} else if( t == 3280 ) {
    oRedS6TargetSource.Spawner.SpriteIndex = sprRedSpikeBullet;
    var spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 1.75, scrRedS7SpawnSpikeFan, 10 );
    spawner.TotalDirDelta = 360 / 5;
    spawner = scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 4, scrRedS7SpawnTargetCircle, 10 );
    spawner.Speed = 18;
} else if( t == 3299 ) {
    spawner = scrRedCreateCustomSpawner( 0, 0, 4, scrRedS7SpawnTargetCircle, 14 );
    spawner.Speed = 20;
    spawner = scrRedCreateCustomSpawner( 800, 0, 4, scrRedS7SpawnTargetCircle, 14 );
    spawner.Speed = 20;
} else if( t == 3320 ) {
    with( oRedS6TargetSource.Spawner ) {
        instance_destroy();
    }
} else if( t == 3337 ) {
    var circleDir = random( 360 );
    scrRedS7SpawnFuzzyCircle( circleDir, 35, 10 );
    scrRedS7SpawnFuzzyCircle( circleDir, 40, 6 );
    scrRedS7SpawnFuzzyCircle( circleDir, 40, 5 );
} else if( t == 3356 ) {
    scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 2, scrRedS7SpawnTargetBullets, 15 );
} else if( t == 3380 ) {
    with( oRedS7FuzzySpike ) {
        friction = 0.5;
        DirDelta = choose( random_range( -4, -1 ), random_range( 1, 4 ) );
    }
} else if( t == 3400 ) {
    with( oRedS7FuzzySpike ) {
        friction = 0;
        speed = 1;
        DirDelta = 0;
    }
} else if( t == 3424 ) {

} else if( t == 3465 ) {

}


#define scrRedS7SpawnSpikeFan
var relPos = Lifetime / SpawnDuration;
var bulletCount = 10;
var startDir = scrRedDirToPlayerFeet( x, y ) + 360 / ( 2 * bulletCount );
var endDir = startDir + TotalDirDelta;
var currentDir = lerp( startDir, endDir, relPos );
scrRedCreateCircle( x, y, currentDir, bulletCount, oRedS7FanSpike );

#define scrRedS7SpawnSpikeCircle
var relPos = Lifetime / SpawnDuration;
var bulletCount = 10;
var startDir = scrRedDirToPlayerFeet( x, y ) + 360 / ( 2 * bulletCount );
var endDir = startDir + TotalDirDelta;
var currentDir = lerp( startDir, endDir, relPos );
scrRedCreateCircle( x, y, currentDir, bulletCount, oRedS7FanSpike );

#define scrRedS7SpawnSpikeSpiral
var relPos = Lifetime / SpawnDuration;
var bulletCount = 10;
var startDir = scrRedDirToPlayerFeet( x, y ) + 360 / ( 2 * bulletCount );
var endDir = startDir + TotalDirDelta;
var currentDir = lerp( startDir, endDir, relPos );
scrRedCreateCircle( x, y, currentDir, bulletCount, oRedS7SpiralSpike );

#define scrRedS7SpawnTargetCircle
var targetDir = scrRedDirToPlayer( x, y );
scrRedCreateCircle( x, y, targetDir, 18, oRedS7TargetCircleSpike );
#define scrRedS7SpawnFuzzyCircle
var circleDir = argument0;
var bulletCount = argument1;
var circleSpeed = argument2;

var params = scrRedCreateCircleAdditionalParams();
params.Speed = circleSpeed;
scrRedInitializeCircle( oRedS6TargetSource.x, oRedS6TargetSource.y, circleDir, bulletCount, oRedS7FuzzySpike, params );

#define scrRedS7SpawnTargetBullet
var dir = scrRedDirToPlayer( oRedS6TargetSource.x, oRedS6TargetSource.y );
scrRedCreateCircle( oRedS6TargetSource.x, oRedS6TargetSource.y, dir, 10, oRedS7TargetBullet );

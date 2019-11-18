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
    scrRedS7SpawnCircle( circleDir, bulletCount, 10, oRedS7CircleSpike );
    scrRedS7SpawnCircle( circleDir + bulletCount / 720, bulletCount, 7, oRedS7CircleSpike );
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
    scrRedS7SpawnCircle( circleDir, 35, 10, oRedS7CircleSpike );
    scrRedS7SpawnCircle( circleDir, 30, 7, oRedS7OuterFuzzySpike );
    scrRedS7SpawnCircle( circleDir, 30, 5, oRedS7InnerFuzzySpike );
} else if( t == 3356 ) {
    scrRedCreateCustomSpawner( oRedS6TargetSource.x, oRedS6TargetSource.y, 5, scrRedS7SpawnTargetBullets, 20 );
} else if( t == 3380 ) {
    with( oRedS7FuzzySpike ) {
        friction = 0.5;
    }
} else if( t == 3400 ) {
    var outerDir = choose( -1, 1 );
    with( oRedS7OuterFuzzySpike ) {
        DirDelta = outerDir * 1;
        alarm[0] = 30;
        friction = 0;
        speed = 2;
    }
    with( oRedS7InnerFuzzySpike ) {
        DirDelta = -outerDir * 1;
        alarm[0] = 30;
        friction = 0;
        speed = 2;
    }
} else if( t == 3424 ) {
    S7StartPlayerPosX = scrRedGetPlayerX();
    scrRedS7MoveWall( S7StartPlayerPosX < 400, 20, S7StartPlayerPosX + 32 );
    if( S7StartPlayerPosX < 400 ) {
        scrRedShakeViewX( -100, 40 );
    } else {
        scrRedShakeViewX( 100, 40 );
    }
} else if( t == 3444 ) {
    scrRedS7MoveWallBack( S7StartPlayerPosX < 400, 20 );
} else if( t == 3465 ) {
    scrRedS7MoveWall( S7StartPlayerPosX >= 400, 20, S7StartPlayerPosX + 32 );
    if( S7StartPlayerPosX < 400 ) {
        scrRedShakeViewX( 100, 40 );
    } else {
        scrRedShakeViewX( -100, 40 );
    }
} else if( t == 3485 ) {
    scrRedS7MoveWallBack( S7StartPlayerPosX >= 400, 20 );
}


#define scrRedS7SpawnSpikeFan
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
#define scrRedS7SpawnCircle
var circleDir = argument0;
var bulletCount = argument1;
var circleSpeed = argument2;
var circleObject = argument3;

var params = scrRedCreateCircleAdditionalParams();
params.Speed = circleSpeed;
scrRedInitializeCircle( oRedS6TargetSource.x, oRedS6TargetSource.y, circleDir, bulletCount, circleObject, params );

#define scrRedS7SpawnTargetBullets
var dir = scrRedDirToPlayer( oRedS6TargetSource.x, oRedS6TargetSource.y );
scrRedCreateCircle( oRedS6TargetSource.x, oRedS6TargetSource.y, dir, 18, oRedS7TargetBullet );

#define scrRedS7MoveWall
var moveLeft = argument0;
var duration = argument1;
var distance = argument2;
distance = min( distance, 320 );

var targetWall;
var destWallX;
var spikeObj;
var spikeX;
var destSpikeX;
if( moveLeft ) {
    targetWall = oRedRightBlock;
    destWallX = 800 - 32 - distance;
    spikeObj = oRedS7LeftWallSpike;
    spikeX = 800 - 32;
    destSpikeX = destWallX - 32;
} else {
    targetWall = oRedLeftBlock;
    destWallX = distance;
    spikeObj = oRedS7RightWallSpike;
    spikeX = 0;
    destSpikeX = destWallX + 32;
}

for( var i = 0; i < 19; i++ ) {
    var spikeY = i * 32;
    instance_create( spikeX, spikeY, spikeObj );
}

with( spikeObj ) {
    scrRedMoveInstance( id, destSpikeX, y, duration, scrRedTweenSineOut );
}

with( targetWall ) {
    scrRedMoveInstance( id, destWallX, y, duration, scrRedTweenSineOut );
}


#define scrRedS7MoveWallBack
var isRightWall = argument0;
var duration = argument1;

var targetWall;
var destX;
var spikeObj;
if( isRightWall ) {
    targetWall = oRedRightBlock;
    destX = 800 - 32;
    spikeObj = oRedS7LeftWallSpike;
} else {
    targetWall = oRedLeftBlock;
    destX = 0;
    spikeObj = oRedS7RightWallSpike;
}

with( spikeObj ) {
    scrRedMoveInstance( id, destX, y, duration, scrRedTweenSineIn );
    alarm[0] = duration;
}

with( targetWall ) {
    scrRedMoveInstance( id, destX, y, duration, scrRedTweenSineIn );
}

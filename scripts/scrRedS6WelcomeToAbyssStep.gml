#define scrRedS6WelcomeToAbyssStep
var t = argument0;

if( t == 2791 && !instance_exists( oRedS6AbyssSource ) ) {
    var left = instance_create( 100, 100, oRedS6TargetSource );
    left.AngleDelta = 1;
    var right = instance_create( 700, 100, oRedS6TargetSource );
    right.AngleDelta = -1;
    with( oRedAbyssBackground ) {
        sprite_index = sprRedAbyssRedBackground;
    }
}

if( t == 2791 ) {
    scrRedMoveInstance( oRedS6AbyssSource, 400, 200, 20, scrRedTweenSineOut );
    scrRedAttachCustomSpawner( oRedS6AbyssSource, 4, scrRedS6SpawnAntitargetCircle );
    with( oRedS6AbyssSource ) {
        Spawner.SpriteIndex = sprRedAbyssGrad;
    }
}
if( t == 2791 + 20 ) {
    with( instance_find( oRedS6TargetSource, 0 ) ) {
        with( Spawner ) {
            instance_destroy();
        }
        scrRedAttachCustomSpawner( id, 8, scrRedS6SpawnSpiralBullet );
        Spawner.direction = random( 360 );
        Spawner.DirDelta = 10;
        Spawner.SpiralSpeed = 10;
        instance_change( oRedS6SpiralSource, false );
    }
}

if( t == 2845 ) {

} else if( t == 2850 ) {
    var spawner = scrRedCreateCustomSpawner( 800 - 48, 576, 1, scrRedS6SpawnWaveSpike );
    scrRedShakeViewAngle( 8, 40 );
    spawner.direction = 180;
    spawner.speed = 30;
} else if( t == 2858 ) {
    // Actual music timing, spawning moved 8 frames earlier.
} else if( t == 2889 ) {

} else if( t == 2895 ) {
    var spawner = scrRedCreateCustomSpawner( 32, 576, 1, scrRedS6SpawnWaveSpike );
    scrRedShakeViewAngle( -8, 40 );
    spawner.direction = 0;
    spawner.speed = 30;

} else if( t == 2901 ) {
    // Actual music timing, spawning moved 8 frames earlier.
} else if( t == 2934 ) {
    
} else if( t == 2938 ) {
    var duration = 22;
    var nextFullIndex = 0;
    var playerBlockIndex = ( scrRedGetPlayerX() - 32 ) / 32; 
    var minBlockedIndex = floor( playerBlockIndex ) - 1;
    var maxBlockedIndex = ceil( playerBlockIndex ) + 1;
    for( var blockIndex = 0; blockIndex < 23; blockIndex++ ) {
        if( blockIndex >= minBlockedIndex && blockIndex <= maxBlockedIndex ) {
            blockIndex = maxBlockedIndex;
            nextFullIndex = maxBlockedIndex + 1;
        } else if( blockIndex == nextFullIndex ) {
            nextFullIndex += irandom_range( 2, 2 );
            var spikeX = 32 + blockIndex * 32;
            var spike = instance_create( spikeX, 576, oRedS6FloorSpike );
            spike.Duration = duration / 2;
        } else {
            var spikeX = 32 + blockIndex * 32;
            scrRedCreateSlidingSpike( spikeX, 576, 90, 0.5, duration, sprRedAbyssSpikeUp );
            scrRedCreateSlidingSpike( spikeX + 16, 576, 90, 0.5, duration, sprRedAbyssSpikeUp );
        }
    }
    scrRedShakeViewY( -32, 24 );
    var newSpiralSpeed = 4;
    with( oRedS6SpiralSource ) {
        Spawner.SpiralSpeed = newSpiralSpeed;
    }
    with( oRedS6SpiralBullet ) {
        speed = newSpiralSpeed;
    }
} else if( t == 2946 ) {
    // Actual music timing, spawning moved 8 frames earlier.
} else if( t == 2967 ) {
    with( oRedS6SpiralSource ) {
        scrRedCreateCustomSpawner( x, y, 10, scrRedS6CreateTargetSpike, 100 );
    }
} else if( t == 3010 ) {
    with( oRedS6SpiralSource ) {
        with( Spawner ) {
            instance_destroy();
        }
    }
} else if( t == 3080 ) {
    var spawner = scrRedAttachCustomSpawner( oRedS6SpiralSource, 1.5, scrRedS6SpawnSpiralBullet, 20 );
    spawner.direction = scrRedDirToPlayer( spawner.x, spawner.y );
    spawner.DirDelta = -10;
    spawner.SpiralSpeed = 10;
} else if( t == 3115 ) {
    with( oRedS6FloorSpike ) {
        scrRedMoveInstance( id, x, y + 16, 3137 - 3115 );
    }
} else if( t == 3137 ) {
    with( oRedS6FloorSpike ) {
        scrRedMoveInstance( id, x, -48, 15, scrRedTweenSineIn );
        var trail = scrRedAttachTrail( id, 10 );
        trail.TailScale = 1;
        trail.image_alpha = 0.75;
        trail.TailAlpha = 0.5;
    }
}

#define scrRedS6SpawnAntitargetCircle
var playerDir = scrRedDirToPlayerFeet( x, y );
var bulletCount = 10;
var dirDelta = 360 / ( 2 * bulletCount );
var circle = scrRedCreateCircleAdditionalParams();
circle.Spawner = id;
scrRedInitializeCircle( x, y, playerDir + dirDelta, bulletCount, oRedS6TargetBullet, circle );

#define scrRedS6SpawnSpiralBullet
scrRedCreateCircle( x, y, direction, 9, oRedS6SpiralBullet );
direction += DirDelta + random_range( -1, 1 );

#define scrRedS6SpawnWaveSpike
if( x < 32 || x > 800 - 48 ) {
    instance_destroy();
} else {
    instance_create( x, y, oRedS6WaveSpike );
}


#define scrRedS6CreateTargetSpike
scrRedCreateCircle( x, y, scrRedDirToPlayer( x, y ), 12, oRedS6TargetSpike );
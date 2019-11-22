#define scrRedS8RedMarchStep
var t = argument0;

if( t == 3488 ) {
    if( !instance_exists( oRedS6AbyssSource ) ) {
        var targetSrc = instance_create( 400, 200, oRedS6TargetSource );
        targetSrc.AngleDelta = 1;
        var spiralSrc = instance_create( 400, 200, oRedS6SpiralSource );
        spiralSrc.AngleDelta = -1;
        with( oRedAbyssBackground ) {
            sprite_index = sprRedAbyssRedBackground;
        }
    }
    var spawner = scrRedAttachCustomSpawner( oRedS6SpiralSource, 1.5, scrRedS6SpawnSpiralBullet, 20 );
    spawner.direction = scrRedDirToPlayer( spawner.x, spawner.y );
    spawner.DirDelta = -10;
    spawner.SpiralSpeed = 10;
} else if( t == 3508 ) {
    scrRedAttachCustomSpawner( oRedS6TargetSource, 21.3, scrRedS8SpawnTargetCircle );
    var spawner = scrRedAttachCustomSpawner( oRedS6SpiralSource, 21.3, scrRedS8SpawnAntitargetCircle );
    spawner.CurrentPeriod = spawner.SpawnPeriod / 2;
} else if( t == 3510 ) {
    var wallSpawner = scrRedCreateCustomSpawner( 0, 0, 21.3, scrRedS8SpawnSpikeTopWall, 3840 - 3510 );
    wallSpawner.WallId = 0;
    wallSpawner.XOffset = 48;
} else if( t == 3518 ) {
    scrRedCreateCustomSpawner( 0, 0, 21.3, scrRedS8SlowSpikeWall, 3840 - 3510 );
} else if( t == 3606 ) {
} else if( t == 3660 ) {
    with( oRedS6TargetSource.Spawner ) {
        instance_destroy();
    }
    with( oRedS6SpiralSource.Spawner ) {
        instance_destroy();
    }
} else if( t == 3680 ) {
    var spawner = scrRedAttachCustomSpawner( oRedS6SpiralSource, 5, scrRedS8SpawnFastAntitargetCircle, 20 );
} else if( t == 3706 ) {
    var spawner = scrRedAttachCustomSpawner( oRedS6SpiralSource, 5, scrRedS8SpawnFastTargetCircle, 25 );
} else if( t == 3736 ) {
    scrRedAttachCustomSpawner( oRedS6TargetSource, 21.3, scrRedS8SpawnTargetCircle );
    var spawner = scrRedAttachCustomSpawner( oRedS6SpiralSource, 21.3, scrRedS8SpawnAntitargetCircle );
    spawner.CurrentPeriod = spawner.SpawnPeriod / 2;
} else if( t == 3770 ) {
    with( oRedS6TargetSource.Spawner ) {
        instance_destroy();
    }
    with( oRedS6SpiralSource.Spawner ) {
        instance_destroy();
    }
} else if( t == 3792 ) {
    var spawner = scrRedAttachCustomSpawner( oRedS6SpiralSource, 2, scrRedS6SpawnSpiralBullet, 15 );
    spawner.direction = 0;
    spawner.DirDelta = 30;
    spawner.SpiralSpeed = 10;
} else if( t == 3838 ) {
    with( oRedS8WallSpike ) {
        MinSpeed = 3;
        IsWrapping = true;
    }
} else if( t == 3858 ) {
    with( oRedS8WallSpike ) {
        var newSpike = instance_copy( true );
        newSpike.IsWrapping = true;
        WallId++;
    }
    var wallAngle = 45;
    with( oRedS8WallSpike ) {
        Acceleration = 0;
        var angle;
        if( WallId % 2 == 0 ) {
            angle = wallAngle;
        } else {
            angle = -wallAngle;
        }
        scrRedRotateInstance( id, direction + angle, 20 );
    }    
} else if( t == 3902 ) {
    with( oRedS8WallSpike ) {
        Acceleration = 1;
    }
} else if( t == 3915 ) {
    with( oRedS8WallSpike ) {
        Acceleration = -1;
        MinSpeed = 4;
    }
} else if( t == 3946 ) {
    var wallAngle = 45;
    with( oRedS8WallSpike ) {
        var angle;
        if( WallId % 2 == 0 ) {
            angle = wallAngle;
        } else {
            angle = -wallAngle;
        }
        scrRedRotateInstance( id, direction + angle, 20 );
        MinSpeed = 3;
    }    
} else if( t == 3968 ) {
    with( oRedS8WallSpike ) {
        var dir = choose( random_range( -180, -120 ), random_range( 120, 180 ) );
        scrRedRotateInstance( id, direction + dir, 20 );
        MinSpeed = 2;
    }    
} else if( t == 3990 ) {
    with( oRedS8WallSpike ) {
        Acceleration = 0.75;
        MaxSpeed = 7;
    }
} else if( t == 4011 ) {
    scrRedS8SendSpikesAway( 300 );
} else if( t == 4023 ) {
    scrRedS8SendSpikesAway( 500 );
} else if( t == 4035 ) {
    scrRedS8SendSpikesAway( 10000 );
} else if( t == 4076 ) {
    var spikeCount = 3;
    var spikeOffsetX = floor( spikeCount / 2 ) * 32 + 16;
    for( var spikeX = 400 - spikeOffsetX; spikeX < 400 + spikeOffsetX; spikeX += 32 ) {
        var floorSpike = instance_create( spikeX, 608 - 32, oRedS8FloorSpike );
        scrRedMoveInstance( floorSpike, spikeX, 608 - 64, 15 );
    }
} else if( t == 4098 ) {
    var spikeCount = 7;
    var circleCenterX = 400;
    var circleCenterY = 608 - 72;
    var circleRadius = 120;
    var dirDelta = 10;
    var spikeDir = 90 - dirDelta * floor( spikeCount / 2 )
    for( var i = 0; i < spikeCount; i++ ) {
        var circleSpike = instance_create( 400, 608 - 48, oRedS8CircleSpike );
        circleSpike.image_angle = 90;
        circleSpike.direction = 90;
        circleSpike.speed = 0.5;
        var posX = circleCenterX + lengthdir_x( circleRadius, spikeDir );
        var posY = circleCenterY + lengthdir_y( circleRadius, spikeDir );
        scrRedMoveInstance( circleSpike, posX, posY, 15 );
        scrRedRotateInstance( circleSpike, spikeDir, 15 );
        spikeDir += dirDelta;
    }
} else if( t == 4120 ) {
    var spikeY = 608 - 132;
    var spikeOffsetX = 48;
    var leftSpawner = scrRedCreateSpawner( 400 - spikeOffsetX, spikeY, 1, oRedS8CeilingSpike, 4162 - 4120 );
    leftSpawner.direction = 180;
    leftSpawner.speed = 22;
    var rightSpawner = scrRedCreateSpawner( 400 + spikeOffsetX, spikeY, 1, oRedS8CeilingSpike, 4162 - 4120 );
    rightSpawner.direction = 0;
    rightSpawner.speed = 22;
} else if( t == 4158 ) {
    with( oRedS8CeilingSpike ) {
        DirDelta = choose( -90, 90 );
        scrRedRotateInstance( id, direction + DirDelta, 10 );
        scrRedMoveInstance( id, x, y - random_range( 16, 20 ), 10 );
        scrRedAttachTrail( id, 10 );
        speed = 0;
    }   
} else if( t == 4168 ) {
    with( oRedS8CeilingSpike ) {
        scrRedRotateInstance( id, direction + sign( DirDelta ) * 10, 10 )
        scrRedMoveInstance( id, x, 608 + 32, 20, scrRedTweenExpIn );
    }
} else if( t == 4173 ) {
    with( oRedS8CeilingSpike ) {
    }
} else if( t == 4186 ) {
    scrRedFlashScreen( c_white, 5, 50 );
} else if( t == 4189 ) {
    scrRedDestroy( oRedS8CircleSpike );
    scrRedDestroy( oRedS8FloorSpike );
    scrRedDestroy( oRedS6AbyssSource );
    with( oRedAbyssBackground ) {
        sprite_index = sprRedAbyssBackground;
    }
}

#define scrRedS8SpawnSpikeTopWall
var deltaX = 144;
var spikeY = -20;
for( var i = 0; i < 6 ; i++ ) {
    var spikeX = XOffset + i * deltaX;
    if( spikeX > 832 ) {
        spikeX -= 864;
    }
    var spike = instance_create( spikeX, spikeY, oRedS8WallSpike );
    spike.direction = -90;
    spike.image_angle = spike.direction;
    spike.WallId = WallId;
}
WallId++;
XOffset += deltaX / 2;
while( XOffset > deltaX ) {
    XOffset -= deltaX;
}

with( oRedS8WallSpike ) {
    Acceleration = 0;
    speed = 10;
}

#define scrRedS8SlowSpikeWall
with( oRedS8WallSpike ) {
    Acceleration = -1.5;
}

#define scrRedS8SpawnTargetCircle
var dir = scrRedDirToPlayer( x, y );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 7;
params.Scale = 1;
scrRedInitializeCircle( x, y, dir, 10, oRedS8TargetBullet, params );

#define scrRedS8SpawnAntitargetCircle
var bulletCount = 10;
var dir = scrRedDirToPlayer( x, y ) + 360 / ( 2 * bulletCount );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 7;
params.Scale = 1;
scrRedInitializeCircle( x, y, dir, bulletCount, oRedS8TargetBullet, params );

#define scrRedS8SpawnFastTargetCircle
var dir = scrRedDirToPlayer( x, y );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 14;
params.Scale = 1;
scrRedInitializeCircle( x, y, dir, 16, oRedS8TargetBullet, params );

#define scrRedS8SpawnFastAntitargetCircle
var bulletCount = 16;
var dir = scrRedDirToPlayer( x, y ) + 360 / ( 2 * bulletCount );
var params = scrRedCreateCircleAdditionalParams();
params.Speed = 14;
params.Scale = 0.9;
scrRedInitializeCircle( x, y, dir, bulletCount, oRedS8TargetBullet, params );
#define scrRedS8SendSpikesAway
var radius = argument0;

var playerX = scrRedGetPlayerX();
var playerY = scrRedGetPlayerY();
with( oRedS8WallSpike ) {
    if( point_distance( x, y, playerX, playerY ) < radius ) {
        var spike = instance_create( x, y, oRedS8GravitySpike );
        var dir = point_direction( playerX, playerY, x, y );
        spike.direction = dir;
        spike.image_angle = spike.direction;
        spike.speed = 6;
        spike.gravity = 0.3;
        spike.image_xscale = image_xscale;
        spike.image_yscale = image_yscale;
        instance_destroy();
    }
}
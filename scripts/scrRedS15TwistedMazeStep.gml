/// scrRedS15TwistedMazeStep(t)
var t = argument0;

if( t == 8357 ) {
    if( !instance_exists( oRedS14Source ) ) {
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        with( oRedAbyssBlock ) {
            image_alpha = 0;
        }
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
        scrRedDestroy( oRedLightLine );
        scrRedCreateEdgeWalls( 24, 24 );
    }
    scrRedDestroy( oRedS14Source );
    var src1 = instance_create( 400, 20, oRedS15Source );
    src1.AngleDelta = 1;
    var src2 = instance_create( 400, 586, oRedS15Source );
    src2.AngleDelta = -1;

} else if( t == 8381 ) {
    scrRedS15SpawnSpikeRandomWall( -200 );
    scrRedS15SpawnSpikeRandomWall( 1000 );
   
} else if( t == 8443 ) {
    var src1 = instance_find( oRedS15Source, 0 );
    var src2 = instance_find( oRedS15Source, 1 );
    src1.FollowPlayer = true;
    src1.hspeed = -7;
    src2.FollowPlayer = true;
    src2.hspeed = 7;   
    scrRedAttachSpawner( oRedS15Source, 4, oRedS15VerticalSpike, 35 );
} else if( t == 8487 ) {
    with( oRedS15Source ) {
        FollowPlayer = false;
        speed = 0;
    }
    scrRedMoveInstance( oRedS15Source, 400, 303, 22, scrRedTweenSineIn );
} else if( t == 8509 ) {
    repeat( 70 ) {
        var bullet = instance_create( 400, 303, oRedS15BurstBullet );
        with( bullet ) {
            speed = random_range( 6, 12 );
            direction = random( 360 );
            scrRedSetScale( random_range( 0.5, 1 ) );
        }
    }
    var spawner = scrRedCreateCustomSpawner( 0, 0, 50, scrRedS15CreateSpikeWall );
    if( scrRedGetPlayerX() <= 400 ) {
        spawner.WallX = 800;
        spawner.WallDir = 180;
    } else {
        spawner.WallX = 0;
        spawner.WallDir = 0;
    }
    scrRedMoveInstance( oRedS15Source, 400, 100, 50 );
    var src1 = instance_find( oRedS15Source, 0 );
    var spawner = scrRedAttachCustomSpawner( src1, 10, scrRedS15SpawnSpiralBullet );
    spawner.CurrentDir = random( 360 );
} else if( t == 8540 ) {
    var bullet = instance_find( oRedS15WallSpike, 0 );
    var wallX = 800 - bullet.Spawner.WallX;
    var wallDir = bullet.Spawner.WallDir + 180;
    for( var wallY = 0; wallY < 608; wallY += 32 ) {
        var spike = instance_create( wallX, wallY, oRedS15DoomSpike );
        spike.direction = wallDir;
        spike.image_angle = wallDir;
        spike.speed = 1.25;
    }
} else if( t == 8575 ) {  
    var src1 = instance_find( oRedS15Source, 0 );
    scrRedAttachCustomSpawner( src1, 1, scrRedS15SpawnMiddleBarrage, 25 );
    src1.Spawner.MinSpeed = 8;
    src1.Spawner.MaxSpeed = 10;
} else if( t == 8660 ) {  
    var src1 = instance_find( oRedS15Source, 0 );
    scrRedAttachCustomSpawner( src1, 1, scrRedS15SpawnMiddleBarrage, 35 );
    src1.Spawner.MinSpeed = 8;
    src1.Spawner.MaxSpeed = 10;
} else if( t == 8815 ) {
    scrRedDestroy( oRedScriptSpawner );
} else if( t == 8830 ) {  
    var src1 = instance_find( oRedS15Source, 0 );
    scrRedAttachCustomSpawner( src1, 1, scrRedS15SpawnMiddleBarrage, 25 );
    src1.Spawner.MinSpeed = 8;
    src1.Spawner.MaxSpeed = 10;
} else if( t == 8920 ) {
    scrRedDestroy( oRedAttachedScriptSpawner );    
    var src1 = instance_find( oRedS15Source, 0 );
    scrRedAttachCustomSpawner( src1, 0.75, scrRedS15SpawnFinalBarrage );
    src1.Spawner.MinSpeed = 5;
    src1.Spawner.MaxSpeed = 7;
} else if( t == 9050 ) {
    scrRedDestroy( oRedAttachedSpawner );
    with( oRedS15DoomSpike ) {
        direction += random_range( 165, 195 );
        speed = random_range( 8, 12 );
        AngleDelta = choose( -5, 5 );
    }
}

var t = argument0;

if( live_call( t ) ) {
    return live_result;
}

if( t == 7660 ) {
    if( !instance_exists( oRedS13Source ) ) {
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
    }
    scrRedDestroy( oRedS13Source );
    var src1 = instance_create( 700, 100, oRedS14Source );
    src1.y = src1.YStart;
    src1.YStep = 0;
    src1.AngleDelta = 1;
    var src2 = instance_create( 700, 508, oRedS14Source );
    src2.y = src2.YEnd;
    src2.YStep = src2.YDuration;
    src2.AngleDelta = -1;
    scrRedAttachSpawner( oRedS14Source, 4, oRedS14Bullet );
    
} else if( t == 7702 ) {
    with( oRedS14Source ) {
        Spawner.SpawnPeriod = 3;
    }
    scrRedAttachCustomSpawner( oRedS14Source, 3, scrRedS14SpawnBurstBullets, 20 );
} else if( t == 7790 ) {
    scrRedDestroy( oRedBaseSpawner );
    with( oRedS14Bullet ) {
        TargetSpeed = 0.5;
        ChangeDuration = 13;
    }
} else if( t == 7803 ) {
    with( oRedS14Bullet ) {
        TargetSpeed = StartSpeed * 1.3;
        direction = 0;
        ChangeDuration = 10;
        SpeedStep = 0;
    }
} else if( t == 7830 ) {
    scrRedAttachCustomSpawner( oRedS14Source, 3, scrRedS14SpawnBurstBullets, 10 );
    scrRedAttachSpawner( oRedS14Source, 3, oRedS14Bullet, 60 );
} else if( t == 7900 ) {
    with( oRedS14Source ) {
        Oscillate = false;
    }
    scrRedS14MoveSources( 780, 20, 20, 586, 32 );
} else if( t == 7932 ) {
    scrRedS14MoveSources( 20, 20, 780, 586, 80 );
    scrRedS14SpawnPolygon( oRedS14Source, 5, 2 );
} else if( t == 7948 ) {
    scrRedS14SpawnPolygon( oRedS14Source, 5, 2 );
} else if( t == 7964 ) {
    scrRedS14SpawnPolygon( oRedS14Source, 5, 2 );
} else if( t == 7980 ) {
    scrRedS14SpawnPolygon( oRedS14Source, 5, 2 );
} else if( t == 7996 ) {
    scrRedS14SpawnPolygon( oRedS14Source, 5, 2 );
} else if( t == 8012 ) {
    scrRedS14MoveSources( 20, 586, 780, 20, 50 );
    scrRedAttachSpawner( oRedS14Source, 1.75, oRedS14BarrageSpike, 20 );
} else if( t == 8040 ) {
    with( oRedS14Source ) {
        var dir = random( 360 );
        var count = 10;
        scrRedCreateCircle( x, y, dir, count, oRedS14FastCircleSpike );
        scrRedCreateCircle( x, y, dir + count / 720, count, oRedS14SlowCircleSpike );
    }
    
} else if( t == 8041 ) {
    // TEMP
    if( !instance_exists( oRedS14Source ) ) {
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
        
        var src1 = instance_create( 780, 20, oRedS14Source );
        src1.x = 780;
        src1.y = 20;
        src1.Oscillate = false;
        src1.AngleDelta = 1;
        var src2 = instance_create( 20, 586, oRedS14Source );
        src2.Oscillate = false;
        src2.x = 20;
        src2.y = 586;
        src2.AngleDelta = -1;
    }
    // END TEMP
    
} else if( t == 8096 ) {
    scrRedS14CreateSpikeLine( 8, 35 );
    scrRedS14CreateSpikeLine( 8, -35 );
} else if( t == 8107 ) {
    scrRedS14CreateSpikeLine( 8, 25 );
    scrRedS14CreateSpikeLine( 8, -25 );
} else if( t == 8118 ) {
    scrRedS14CreateSpikeLine( 8, 15 );
    scrRedS14CreateSpikeLine( 8, -15 );
} else if( t == 8062 ) {
    scrRedAttachCustomSpawner( oRedS14Source, 4, scrRedS14SpawnTargetSpikes, 8 );    
} else if( t == 8072 ) {
    scrRedAttachCustomSpawner( oRedS14Source, 4, scrRedS14SpawnTargetSpikes, 8 ); 
} else if( t == 8138 ) {
    scrRedAttachCustomSpawner( oRedS14Source, 4, scrRedS14SpawnCircleBullets, 20 );
} else if( t == 8206 ) {
    scrRedAttachSpawner( oRedS14Source, 1, oRedS14TimedSpike, 25 );
    with( oRedS14Source ) {
        Spawner.MinSpeed = 11;
        Spawner.MaxSpeed = 19.5;
    }
    scrRedS14MoveSources( 780, 586, 20, 20, 25 );
} else if( t == 8237 ) {
    scrRedAttachCustomSpawner( oRedS14Source, 4, scrRedS14SpawnTargetSpikes, 8 ); 
} else if( t == 8252 ) {
    scrRedAttachSpawner( oRedS14Source, 1.5, oRedS14TimedSpike, 25 );
    with( oRedS14Source ) {
        Spawner.MinSpeed = 14;
        Spawner.MaxSpeed = 18.5;
    }
    scrRedS14MoveSources( 780, 20, 20, 586, 25 );
} else if( t == 8291 ) {
    scrRedAttachCustomSpawner( oRedS14Source, 4, scrRedS14SpawnTargetSpikes, 8 ); 
} else if( t == 8305 ) {
    scrRedAttachSpawner( oRedS14Source, 2, oRedS14TimedSpike, 15 );
    with( oRedS14Source ) {
        Spawner.MinSpeed = 14;
        Spawner.MaxSpeed = 21;
    }
    scrRedS14MoveSources( 400, 20, 400, 586, 15 );
} else if( t == 8323 ) {
} else if( t == 8336 ) {
    scrRedBulletFadeOut( oRedS14TimedSpike, 0.03 );
    scrRedDeactivateBullets( oRedS14TimedSpike );
}

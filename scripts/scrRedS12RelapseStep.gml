var t = argument0;

if( t == 6269 ) {
    var leftSrc = instance_create( -20, 100, oRedS12Source );
    leftSrc.AngleDelta = -1;
    var leftSpawner = scrRedAttachSpawner( leftSrc, 1.8, oRedS12Bullet );
    leftSpawner.SpeedMin = 6;
    leftSpawner.SpeedMax = 10;
    
    var rightSrc = instance_create( 820, 100, oRedS12Source );
    rightSrc.AngleDelta = 1;
    var rightSpawner = scrRedAttachSpawner( rightSrc, 1.8, oRedS12Bullet );
    rightSpawner.SpeedMin = 6;
    rightSpawner.SpeedMax = 10;
    
    scrRedMoveInstance( oRedS12Source, 400, 100, 6619 - 6269 );
    
} else if( t == 6319 ) {
} else if( t == 6403 ) {
} else if( t == 6941 ) {
} else if( t == 6578 ) {
} else if( t == 6619 ) {
    scrRedMoveInstance( oRedS12Source, 400, 300, 6879 - 6619 );
} else if( t == 6664 ) {
    with( oRedBaseSpawner ) {
        SpeedMin = 8;
        SpeedMax = 12;
    }
} else if( t == 6706 ) {
    with( oRedBaseSpawner ) {
        SpeedMin = 9;
        SpeedMax = 13;
    }
} else if( t == 6751 ) {
    
} else if( t == 6793 ) {
    with( oRedBaseSpawner ) {
        SpeedMin = 10;
        SpeedMax = 14;
    }
} else if( t == 6837 ) {
    with( oRedBaseSpawner ) {
        SpawnPeriod = 5;
    }
    scrRedAttachSpawner( oRedS12Source, 2, oRedS12BurstBullet );
} else if( t == 6879 ) {
    with( oRedS12Bullet ) {
        instance_destroy();
    }
    with( oRedS12BurstBullet ) {
        speed = 0;
    }
    with( oRedS12Source ) {
        var newSrc = instance_create( x, y, oRedS13Source );
        newSrc.AngleDelta = sign( AngleDelta );
        instance_destroy();
    }
    instance_create( 0, 0, oRedS5TempBackdrop );
    instance_create( 0, 0, oRedInfiniteJump );
} else if( t == 6890 ) {
    var moveDuration = 25;
    for( var spikeY = 0; spikeY < 608; spikeY += 32 ) {
        var lSpike = instance_create( 0, spikeY, oRedS12LeftSpike );
        scrRedMoveInstance( lSpike, 32, spikeY, moveDuration, scrRedTweenExpIn );
        var rSpike = instance_create( 800 - 32, spikeY, oRedS12RightSpike );
        scrRedMoveInstance( rSpike, 800 - 64, spikeY, moveDuration, scrRedTweenExpIn );
    }
    for( var spikeX = 64; spikeX < 800 - 64; spikeX += 32 ) {
        var bSpike = instance_create( spikeX, 608 - 32, oRedS12BottomSpike );
        scrRedMoveInstance( bSpike, spikeX, 608 - 64, moveDuration, scrRedTweenExpIn );
    }
    scrRedDeactivateBullets( oRedS12Spike );
} else if( t == 6895 ) {
    with( oRedAbyssBackground ) {
        sprite_index = sprRedAbyssRedBackground;
    }
    scrRedBulletFadeOut( oRedS5TempBackdrop );
    scrRedActivateBullets( oRedS12Spike );
} else if( t == 6940 ) {
    var moveDuration = 23;
    scrRedBulletFadeOut( oRedS12BurstBullet );
    scrRedDeactivateBullets( oRedS12BurstBullet );
    with( oRedS12LeftSpike ) {
        scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineIn );
    }
    with( oRedLeftBlock ) {
        scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineIn );
    }
    with( oRedBlCornerBlock ) {
        scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineIn );   
    }
    with( oRedS12RightSpike ) {
        scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineIn );
    }
    with( oRedRightBlock ) {
        scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineIn );   
    }
    with( oRedBrCornerBlock ) {
        scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineIn );
    }    
    with( oRedS12BottomSpike ) {
        scrRedMoveInstance( id, x, 608 + 32, moveDuration, scrRedTweenSineIn );
    }
    with( oRedFloorBlock ) {
        scrRedMoveInstance( id, x, 608 + 32, moveDuration, scrRedTweenSineIn );   
    }
    scrRedDestroy( objBlock );
} else if( t == 6976 ) {
    scrRedDestroy( oRedAbyssBlock );
    scrRedDestroy( oRedS12LeftSpike );
    scrRedDestroy( oRedS12RightSpike );
    scrRedDestroy( oRedS12BottomSpike );
}

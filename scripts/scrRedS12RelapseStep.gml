/// scrRedS12RelapseStep(t)
var t = argument0;

if( live_call( t ) ) {
    return live_result;
}

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
    instance_create( 0, 0, oRedS12BgDrawMechanism );
    
} else if( t == 6269 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.1, 14);
} else if( t == 6283 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 15 );
} else if( t == 6298 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 14 );
} else if( t == 6312 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.9, 18 );
} else if( t == 6330 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 20 );
} 
else if( t == 6355 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.1, 14 );
} else if( t == 6369 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 15 );
} else if( t == 6384 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 14 );
} else if( t == 6398 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.9, 18 );
} else if( t == 6416 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 20 );
} 
else if( t == 6443 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.1, 14 );
} else if( t == 6457 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 15 );
} else if( t == 6472 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 14 );
} else if( t == 6486 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.9, 18 );
} else if( t == 6505 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 20 );
}
else if( t == 6529 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.1, 14 );
} else if( t == 6543 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 15 );
} else if( t == 6558 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 14 );
} else if( t == 6572 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.9, 18 );
} else if( t == 6590 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 20 );
} 
else if( t == 6617 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.1, 14 );
} else if( t == 6631 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 15 );
} else if( t == 6646 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 14 );
} else if( t == 6660 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.9, 18 );
} else if( t == 6678 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 20 );
} 
else if( t == 6704 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.1, 14 );
} else if( t == 6718 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 15 );
} else if( t == 6733 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 14 );
} else if( t == 6747 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.9, 18 );
} else if( t == 6765 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 20 );
} 
else if( t == 6791 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.1, 14 );
} else if( t == 6805 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 15 );
} else if( t == 6819 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.3, 14 );
} else if( t == 6834 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.9, 18 );
} else if( t == 6852 ) {
    scrRedChangeInstanceAlpha( oRedS12BgDrawMechanism, 0.2, 20 );
} 
else if( t == 6619 ) {
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
    instance_create( 0, 0, oRedS5Backdrop );
    instance_create( 0, 0, oRedInfiniteJump );
} else if( t == 6890 ) {
    scrRedCreateEdgeWalls( 24, 56 );
    var mover = instance_create( 0, 0, oRedS12EdgeSpikeMover );
    mover.Duration = 35;
    scrRedDeactivateBullets( oRedAbyssEdgeSpike );
} else if( t == 6895 ) {
    oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
    with( oRedAbyssBlock ) {
        image_alpha = 0;
    }
    scrRedBulletFadeOut( oRedS5Backdrop );
    scrRedActivateBullets( oRedAbyssEdgeSpike );
} else if( t == 6940 ) {
    var moveDuration = 23;
    scrRedBulletFadeOut( oRedS12BurstBullet );
    scrRedDeactivateBullets( oRedS12BurstBullet );
    with( oRedS12EdgeSpikeMover ) {
        StepDelta = -1;
    }
    with( oRedAbyssEdgeSpike ) {
        if( image_angle == -90 ) {
            FoundationY = -24;
            TargetBaseDelta = 0;
        }
    }
    with( oRedLeftBlock ) {
        scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineOut );
    }
    with( oRedBlCornerBlock ) {
        scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineOut );   
    }
    with( oRedRightBlock ) {
        scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineOut );   
    }
    with( oRedBrCornerBlock ) {
        scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineOut );
    }
    with( oRedFloorBlock ) {
        scrRedMoveInstance( id, x, 608 + 32, moveDuration, scrRedTweenSineOut );   
    }
    with( oRedLightLine ) {
        if( WallId == -1 ) {
            scrRedMoveInstance( id, -32, y, moveDuration, scrRedTweenSineOut );
        } else if( WallId == 0 ) {
            scrRedMoveInstance( id, x, 608 + 24, moveDuration, scrRedTweenSineOut );
        } else if( WallId == 1 ) {
            scrRedMoveInstance( id, 832, y, moveDuration, scrRedTweenSineOut );  
        }
    }
    scrRedDestroy( objBlock );
} else if( t == 6976 ) {
    scrRedDestroy( oRedAbyssBlock );
    scrRedDestroy( oRedS12EdgeSpikeMover );
}

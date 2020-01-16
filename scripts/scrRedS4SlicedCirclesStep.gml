var t = argument0;

if( t == 1400 ) {
    if( !instance_exists( oRedS5SourceBullet ) ) {
        instance_create( 400, 300, oRedS5SourceBullet );
    }
}

if( t == 1400 || t == 1574 || t == 1749 || t = 1923 ) {
    oRedS5SourceBullet.AngleDelta = -oRedS5SourceBullet.AngleDelta;
    scrRedCreateSlicedCircle( oRedS5SourceBullet.x, oRedS5SourceBullet.y, oRedS5SourceBullet.AngleDelta );
} else if( t == 1465 || t == 1639 || t == 1815 || t == 1990 ) {
    oRedS5SourceBullet.AngleDelta = -oRedS5SourceBullet.AngleDelta;
    scrRedCreateSlicedCircle( oRedS5SourceBullet.x, oRedS5SourceBullet.y, oRedS5SourceBullet.AngleDelta );
} else if( t == 1530 || t == 1705 || t == 1878 ) {
    oRedS5SourceBullet.AngleDelta = -oRedS5SourceBullet.AngleDelta;
    scrRedCreateSlicedCircle( oRedS5SourceBullet.x, oRedS5SourceBullet.y, oRedS5SourceBullet.AngleDelta );
} else if( t == 1447 ) {
    scrRedAttachCustomSpawner( oRedS5SourceBullet.id, 86, scrRedS4SpawnLeheeCircle, 600 );
}

if( t >= 1447 && t < 2049 ) {
    var deltaT = ( t - 1447 ) % 172;
    var wallDuration = 24;
    if( deltaT = 0 ) {
        // Right spike wall.
        for( var blockIndex = 0; blockIndex < 18; blockIndex++ ) {
            var spikeY = blockIndex * 32;
            if( blockIndex % 2 == 1 ) {
                scrRedCreateSlidingSpike( 768, spikeY, 180, 1, wallDuration, sprRedAbyssSpikeLeft );
            } else {
                scrRedCreateSlidingSpike( 768, spikeY, 180, 0.5, wallDuration, sprRedAbyssSpikeLeft );
                scrRedCreateSlidingSpike( 768, spikeY + 16, 180, 0.5, wallDuration, sprRedAbyssSpikeLeft );            
            }
        }
        scrRedShakeViewX( -10, wallDuration );
    } else if( deltaT == 86 ) {
        // Left spike wall.
        for( var blockIndex = 0; blockIndex < 18; blockIndex++ ) {
            var spikeY = blockIndex * 32;
            if( blockIndex % 2 == 1 ) {
                scrRedCreateSlidingSpike( 0, spikeY, 0, 1, wallDuration, sprRedAbyssSpikeRight );
            } else {
                scrRedCreateSlidingSpike( 16, spikeY, 0, 0.5, wallDuration, sprRedAbyssSpikeRight );
                scrRedCreateSlidingSpike( 16, spikeY + 16, 0, 0.5, wallDuration, sprRedAbyssSpikeRight );            
            }
        }
        scrRedShakeViewX( 10, wallDuration );
    }   
}
if( t == 2049 ) {
    var floorDuration = 38;
    // Bottom spike wall.
    for( var blockIndex = 0; blockIndex < 23; blockIndex++ ) {
        var spikeX = 32 + blockIndex * 32;
        if( blockIndex % 2 == 0 ) {
            scrRedCreateSlidingSpike( spikeX, 576, 90, 1, floorDuration, sprRedAbyssSpikeUp );
        } else {
            scrRedCreateSlidingSpike( spikeX, 576, 90, 0.5, floorDuration, sprRedAbyssSpikeUp );
            scrRedCreateSlidingSpike( spikeX + 16, 576, 90, 0.5, floorDuration, sprRedAbyssSpikeUp );            
        }
    }
    scrRedShakeViewY( -32, floorDuration );
} else if( t == 2074 ) {
    scrRedDestroy( oRedS4SectorController );
    scrRedBulletFadeOut( oRedS4CircleBullet );
    scrRedDeactivateBullets( oRedS4CircleBullet );
}


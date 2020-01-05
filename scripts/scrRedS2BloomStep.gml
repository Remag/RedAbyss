var t = argument0;

if( t == 355 ) {
    scrRedCreateBloomCircle( 400, 150, 3, 2.0, 7, 8, 10 );
} else if( t == 397 ) {
} else if( t == 441 ) {
    scrRedCreateBloomCircle( 400, 150, 4, 2.5, 1, 2, 20 );
} else if( t == 484 ) {
} else if( t == 528 ) {
    scrRedCreateBloomCircle( 400, 150, 5, 3.0, 3, 4, 25 );
} else if( t == 572 ) {
} else if( t == 615 ) {
    scrRedCreateBloomCircle( 400, 150, 6, 3.5, 5, 6, 40 );
} else if( t == 659 ) {
    with( oRedS2Bullet ) {
        MaxSpeed = 100;
        EnableSineMovement = false;
        speed = min( speed, 4 );
        gravity = 0.4;
        friction = 0;
        var divisionX;
        if( abs( scrRedGetPlayerX() - 400 ) < 32 ) {
            divisionX = scrRedGetPlayerX();
        } else {
            divisionX = 400;
        }
        if( x < divisionX ) {
            gravity_direction = 180;   
        } else {
            gravity_direction = 0;
        }
    }
    with( oRedAttachedSpawner ) {
        instance_destroy();
    }
}

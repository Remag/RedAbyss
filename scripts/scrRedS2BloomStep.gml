var t = argument0;

if( t == 355 ) {
    scrRedCreateBloomLine( 100, 0, -90, 3.0, 6, 7, 8 );
    scrRedCreateBloomLine( 400, 0, -90, 3.0, 6, 7, 8 );
    scrRedCreateBloomLine( 700, 0, -90, 3.0, 6, 7, 8 );
    //scrRedCreateBloomCircle( 400, 150, 3, 2.0, 7, 8, 10 );
} else if( t == 397 ) {
} else if( t == 441 ) {
    scrRedCreateBloomLine( 250, 0, -90, 3.0, 6, 1, 2 );
    scrRedCreateBloomLine( 650, 0, -90, 3.0, 6, 1, 2 );
    //scrRedCreateBloomCircle( 400, 150, 4, 2.5, 1, 2, 20 );
} else if( t == 484 ) {
} else if( t == 528 ) {
    scrRedCreateBloomLine( 0, 225, 0, 4.0, 6, 3, 4 );
    scrRedCreateBloomLine( 800, 325, 180, 4.0, 6, 3, 4 );
    scrRedCreateBloomLine( 0, 425, 0, 4.0, 6, 3, 4 );
   // scrRedCreateBloomCircle( 400, 150, 5, 3.0, 3, 4, 25 );
} else if( t == 572 ) {
} else if( t == 615 ) {
    scrRedCreateBloomLine( 0, 560, 0, 3.5, 7, 5, 6 );
    scrRedCreateBloomLine( 800, 560, 180, 3.5, 7, 5, 6 );
    //scrRedCreateBloomCircle( 400, 150, 6, 3.5, 5, 6, 40 );
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

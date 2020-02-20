/// scrRedS17BottomStep(t)
var t = argument0;

if( live_call( t ) ) {
    return live_result;
}

if( t == 9746 ) {
    scrRedCreateCustomSpawner( 0, 0, 8, scrRedS17SpawnTeardrops );
    scrRedS17CreateExplosion( 40 );
} else if( t == 9810 || t == 9832 || t == 9897 || t == 9919 || 
    t == 9984 || t == 10006 || t == 10071 || t == 10093 || t == 10159 || t == 10181 ||
    t == 10246 || t == 10268 || t == 10332 || t == 10354 || t == 10420 || t == 10442 ||
    t == 10505 || t == 10527 || t == 10593 || t == 10615 || t == 10680 || t == 10702 ||
    t == 10767 || t == 10789 )
{
    scrRedS17CreateExplosion( 35 );
}

if( t == 10442 - 50 ) {
    scrRedDestroy( oRedBaseSpawner );
} else if( t == 10442 ) {
    var spawner1 = scrRedCreateSpawner( 0, 0, 6, oRedS17OrbitBullet );
    spawner1.MainDir = 315;
    spawner1.Curve = -1;
    spawner1.ImageMin = 3;
    spawner1.ImageMax = 4;
    var spawner2 = scrRedCreateSpawner( 800, 0, 6, oRedS17OrbitBullet );
    spawner2.MainDir = 225;
    spawner2.Curve = 1;
    spawner2.ImageMin = 7;
    spawner2.ImageMax = 8;
} else if( t == 10789 ) {
    scrRedDestroy( oRedBaseSpawner );
    with( oRedS17OrbitBullet ) {
        CurveDir = 0;
        Wrap = true;
        speed *= 0.75;
    }
    scrRedCreateCustomSpawner( 0, 0, 2, scrRedS17SpawnBarrageBullet );
} else if( t == 10968 ) {
    with( oRedS17FinalBullet ) {
        speed *= 0.75;
    }
    var fade = instance_create( 0, 0, oRedS17FinalFade );
    fade.Duration = 200;
    fade.depth = 0;
} else if( t == 11110 ) {
    var line = instance_create( 0, 0, oRedS17SweepLine );
    scrRedMoveInstance( line, 0, 608, 30, scrRedTweenExpIn );
} else if( t == 11135 ) {
    scrRedDestroy( oRedBaseSpawner );   
    scrRedDeactivateBullets( oRedProjectile );
    var fade = instance_create( 0, 0, oRedS17FinalFade );
    fade.depth = -2;
    fade.Duration = 300;
    with( objPlayer ) {
        visible = false;
        frozen = true;
    }    
    // Clear.
}


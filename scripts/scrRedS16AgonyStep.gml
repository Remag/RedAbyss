var t = argument0;

if( t == 9050 ) {
    if( !instance_exists( oRedS15Source ) ) {
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
    }
    scrRedDestroy( oRedS15Source );
    var src1 = instance_create( 400, 100, oRedS16Source );
    scrRedMoveInstance( src1, 100, 100, 40 );
    scrRedAttachCustomSpawner( src1, 25, scrRedS16SpawnTargetLine );
    scrRedAttachSpawner( src1, 1, oRedS16BarrageBullet );
} else if( t == 9090 ) {
    scrRedAttachCustomSpawner( oRedS16Source, 60, scrRedS16OscillateSpawner, 9191 - 9090 );
} else if( t == 9117 ) {
} else if( t == 9191 ) {
} else if( t == 9210 ) {
    scrRedMoveInstance( oRedS16Source, 400, 100, 25 );
} else if( t == 9291 ) {
    scrRedDestroy( oRedBaseSpawner );
    var spawner = scrRedAttachCustomSpawner( oRedS16Source, 5, scrRedS16SpawnCircle, 15 );
    spawner.CircleDir = random( 360 );
} else if( t == 9313 ) {
    scrRedAttachCustomSpawner( oRedS16Source, 4, scrRedS16SpawnTargetSpike, 20 );
    var fallDuration = 9398 - 9313;
    scrRedMoveInstance( oRedS16Source, 400, 650, 9398 - 9313, scrRedTweenExpIn );
    scrRedAttachCustomSpawner( oRedS16Source, 10, scrRedS16SpawnTrailBullet, fallDuration );
} else if( t == 9335 ) {
} else if( t == 9398 ) {
    scrRedDestroy( oRedS16Source );
    repeat( 30 ) {
        var bullet = instance_create( 400, 610, oRedS16ExplosionBullet );
        bullet.speed = random_range( 3, 10 );
        bullet.direction = random_range( 0, 180 );
        bullet.image_angle = bullet.direction;
    }
    var spawner = scrRedCreateCustomSpawner( 0, 0, 2.25, scrRedS16SpawnBarrageSpike );
    spawner.Curve = false;
} else if( t == 9464 ) {
    with( oRedS16BarrageSpike ) {
        var trail = scrRedAttachTrail( id, 7 );
        trail.TailScale = 1;
    }
    with( oRedBaseSpawner ) {
        Curve = true;
    }
} else if( t == 9489 ) {
    with( oRedBaseSpawner ) {
        Curve = false;
    }
    with( oRedBulletTrail ) {
        Fade = true;
    }
    
} else if( t == 9525 ) {
    scrRedDestroy( oRedBaseSpawner );
} else if( t == 9596 ) {
    scrRedS16CreatePathSpawner( pRedS16TL );
    scrRedS16CreatePathSpawner( pRedS16TR );
    scrRedS16CreatePathSpawner( pRedS16BL );
    scrRedS16CreatePathSpawner( pRedS16BR );
} else if( t == 9639 ) {
    scrRedS16CreatePathSpawner( pRedS16T );
    scrRedS16CreatePathSpawner( pRedS16R );
    scrRedS16CreatePathSpawner( pRedS16B );
    scrRedS16CreatePathSpawner( pRedS16L );
} else if( t == 9660 ) {
    scrRedDestroy( oRedS16PathSpawner );
    scrRedDeactivateBullets( oRedS16PathSpike );
    with( objPlayer ) {
        visible = false;
        frozen = true;
        var dummy = instance_create( x, y, oRedS16PlayerDummy );
        dummy.sprite_index = sprite_index;
        dummy.image_index = image_index;
        dummy.image_speed = image_speed / 5;
    }
    var bBlock = instance_create( 0, 608 - 32, objBlock );
    bBlock.image_xscale = 800 / 32;
    var lBlock = instance_create( 0, 0, objBlock );
    lBlock.image_yscale = ( 608 - 32 ) / 32;
    var rBlock = instance_create( 800 - 32, 0, objBlock );
    rBlock.image_yscale = lBlock.image_yscale;
}

var t = argument0;

if( t == 6966 ) {
    if( !instance_exists( oRedS13Source ) ) {
        var src1 = instance_create( 400, 300, oRedS13Source );
        src1.AngleDelta = 1;
        var src2 = instance_create( 400, 300, oRedS13Source );
        src2.AngleDelta = -1;
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
    }
    var src1 = instance_find( oRedS13Source, 0 );
    var src2 = instance_find( oRedS13Source, 1 );
    scrRedMoveInstance( src1, 64, 64, 20 );
    scrRedMoveInstance( src2, 736, 64, 20 );
    scrRedAttachSpawner( src1, 1, oRedS13Bullet, 80 );
    scrRedAttachSpawner( src2, 1, oRedS13Bullet, 80 );
} else if( t == 7053 ) {
    scrRedS13SpawnCornerCircle( 0, 0 );
} else if( t == 7064 ) {
    scrRedS13SpawnCornerCircle( 800, 0 );
} else if( t == 7075 ) {
    scrRedS13SpawnCornerCircle( 800, 608 );
} else if( t == 7083 ) {
    scrRedS13SpawnCornerCircle( 0, 608 );
} else if( t == 7141 ) {
    scrRedCreateCustomSpawner( 0, 0, 4, scrRedS13SpawnTargetSpike, 20 );
} else if( t == 7162 ) {

} else if( t == 7178 ) {
    with( oRedS13Source ) {
        scrRedCreateCircle( x, y, random( 360 ), 45, oRedS13BurstBullet );
        scrRedMoveInstance( id, x + sign( 400 - x ) * 50, 304, 34 );
    }
} else if( t == 7212 ) {
    scrRedS13MoveInstanceCircle( oRedS13Source, 400, 303, 8 );
    var circle = scrRedCreateCircleAdditionalParams();
    circle.Radius = 286;
    circle.CurrentDirection = 0;
    scrRedInitializeCircle( 400, 303, 0, 40, oRedS13SphincterSpike, circle );
    var controller = instance_create( 0, 0, oRedS13SphincterController );
    controller.Circle = circle;
} else if( t == 7270 ) {
    scrRedAttachCustomSpawner( oRedS13Source, 1.2, scrRedS13SpawnBulletCircle, 25 );
} else if( t == 7338 ) { 
    scrRedS13CreateHSpikeWall( 0, -90 );
} else if( t == 7380 ) {
    scrRedS13CreateHSpikeWall( 608, 90 );
} else if( t == 7425 ) {
    scrRedS13CreateVSpikeWall( 0, 0 );
    scrRedS13CreateVSpikeWall( 800, 180 );
} else if( t == 7465 ) {
    
} else if( t == 7510 ) {
    
} else if( t == 7598 ) {
    
} else if( t == 7639 ) {
    
} else if( t == 7442 ) {
} else if( t == 7525 ) {
    scrRedAttachCustomSpawner( oRedS13Source, 2, scrRedS13SpawnBulletCircle, 25 );
}
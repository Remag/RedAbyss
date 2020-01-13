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
    scrRedAttachSpawner( oRedS14Source, 3, oRedS14Bullet );
    
} else if( t == 7702 ) {
    scrRedAttachCustomSpawner( oRedS14Source, 3, scrRedS14SpawnBurstBullets, 20 );
} else if( t == 7790 ) {
    scrRedDestroy( oRedBaseSpawner );
    with( oRedS14Bullet ) {
        TargetSpeed = 0;
        ChangeDuration = 15;
    }
} else if( t == 7805 ) {
    with( oRedS14Bullet ) {
        TargetSpeed = StartSpeed * 1.2;
        direction = 0;
        ChangeDuration = 10;
        SpeedStep = 0;
    }
} else if( t == 7834 ) {

} else if( t == 7900 ) {

} else if( t == 7932 ) {

} else if( t == 7948 ) {

} else if( t == 7964 ) {

} else if( t == 7980 ) {

} else if( t == 7996 ) {

} else if( t == 8012 ) {

} else if( t == 8040 ) {

} else if( t == 8062 ) {

} else if( t == 8072 ) {

} else if( t == 8138 ) {

} else if( t == 8206 ) {

} else if( t == 8235 ) {

} else if( t == 8249 ) {

} else if( t == 8289 ) {

} else if( t == 8303 ) {

} else if( t == 8335 ) {

}

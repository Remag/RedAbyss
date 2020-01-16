var t = argument0;

if( live_call( t ) ) {
    return live_result;
} 

if( t == 8357 ) {
    if( !instance_exists( oRedS14Source ) ) {
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
    }
    scrRedDestroy( oRedS14Source );
    var src1 = instance_create( 400, 20, oRedS15Source );
    src1.AngleDelta = 1;
    var src2 = instance_create( 400, 586, oRedS15Source );
    src2.AngleDelta = -1;

} else if( t == 8381 ) {

} else if( t == 8443 ) {

} else if( t == 8487 ) {

} else if( t == 8509 ) {

} else if( t == 8540 ) {

} else if( t == 8715 ) {

} else if( t == 9056 ) {

}

var t = argument0;

if( live_call( t ) ) {
    return live_result;
}

if( t == 9050 ) {
    if( !instance_exists( oRedS15Source ) ) {
        oRedAbyssBackground.sprite_index = sprRedAbyssRedBackground; 
        instance_create( 0, 0, oRedInfiniteJump );
        scrRedDestroy( objBlock );
        scrRedDestroy( oRedAbyssBlock );
    }
    scrRedDestroy( oRedS15Source );
    var src1 = instance_create( 400, 100, oRedS16Source );
} else if( t == 9117 ) {
} else if( t == 9191 ) {
} else if( t == 9291 ) {
} else if( t == 9313 ) {
} else if( t == 9335 ) {
} else if( t == 9398 ) {
} else if( t == 9464 ) {
} else if( t == 9596 ) {
} else if( t == 9639 ) {
} else if( t == 9660 ) {
}

var t = argument0;

if( t == 4885 - 25 ) {
    with( oRedAbyssBackground ) {
        sprite_index = sprRedAbyssBackground;
    }
    scrRedS10StartSpawn( 225, 4.5, 1, 3 );
} else if( t == 4964 ) {
} else if( t == 5052 - 25 ) {
    scrRedDestroy( oRedScriptSpawner );
    scrRedS10StartSpawn( -45, 4.5, 6, 8 );
} else if( t == 5139 ) {
} else if( t == 5226 - 25 ) {
    scrRedDestroy( oRedScriptSpawner );
    scrRedS10StartSpawn( 225, 8, 1, 3 );    
    scrRedS10StartSpawn( -45, 8, 6, 8 );    
} else if( t == 5313 ) {

} else if( t == 5400 - 25 ) {
    scrRedDestroy( oRedScriptSpawner );
    scrRedS10StartSpawn( 225, 12, 1, 3 );    
    scrRedS10StartSpawn( -45, 12, 6, 8 ); 
    scrRedS10StartSpawn( -90, 6, 5, 5 );    
} else if( t == 5487 ) {
    scrRedDestroy( oRedScriptSpawner );
}

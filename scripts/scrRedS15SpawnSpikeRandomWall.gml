var wallX = argument0;
var wallDir = argument1;

repeat( 20 ) {
    var spikeY = random_range( 0, 608 );
    var wallSpike = instance_create(  wallX, spikeY, oRedS15RandomWallSpike );
    with( wallSpike ) {
        speed = random_range( 3, 6 );
        direction = wallDir + random_range( -30, 30 );    
        scrRedSetScale( random_range( 0.5, 0.75 ) );
        image_angle = direction;
    }
}

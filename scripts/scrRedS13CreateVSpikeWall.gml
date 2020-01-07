var spikeX = argument0;
var spikeDir = argument1;

for( var spikeY = 0; spikeY < 608; spikeY += random_range( 32, 48 ) ) {
    var spike = instance_create( spikeX, spikeY, oS13WallSpike );
    spike.direction = spikeDir;
    spike.speed = random_range( 2, 10 );
    spike.image_angle = spike.direction;
}

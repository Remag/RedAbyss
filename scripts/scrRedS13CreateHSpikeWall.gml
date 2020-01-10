var spikeY = argument0;
var spikeDir = argument1;

for( var spikeX = 0; spikeX < 800; spikeX += random_range( 48, 56 ) ) {
    var spike = instance_create( spikeX, spikeY, oS13WallSpike );
    spike.direction = spikeDir;
    spike.speed = random_range( 2, 10 );
    spike.image_angle = spike.direction;
}

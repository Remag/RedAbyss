/// scrRedS13CreateVSpikeWall(spikeX, spikeDir, spikeStartIndex)
var spikeX = argument0, spikeDir = argument1, spikeStartIndex = argument2;

var spikeIndex = spikeStartIndex;
for( var spikeY = 0; spikeY < 608; spikeY += random_range( 48, 56 ) ) {
    var spike = instance_create( spikeX, spikeY, oS13WallSpike );
    spike.direction = spikeDir;
    if( spikeIndex % 2 == 0 ) {
        spike.speed = random_range( 3, 7 );
    } else {
        spike.speed = random_range( 7, 9 );
    }
    spike.image_angle = spike.direction;
    spikeIndex++;
}

var side = irandom_range( 0, 3 );
var spikeX;
var spikeY;
var spikeDir;
switch( side ) {
    case 0:
        spikeX = -16;
        spikeY = random_range( 0, 608 );
        spikeDir = 0;
        break;
    case 1:
        spikeX = 816;
        spikeY = random_range( 0, 608 );
        spikeDir = 180;
        break;
    case 2:
        spikeX = random_range( 0, 800 );
        spikeY = -16;
        spikeDir = -90;
        break;
    case 3:
        spikeX = random_range( 0, 800 );
        spikeY = 624;
        spikeDir = 90;
        break;
}

var spike = instance_create( spikeX, spikeY, oRedS16BarrageSpike );
spike.speed = 5.5;
spike.direction = spikeDir + random_range( -45, 45 );
spike.image_angle = spike.direction;
spike.Spawner = id;

if( Curve ) {
    var trail = scrRedAttachTrail( spike, 7 );
    trail.TailScale = 1;
    trail.TailAlpha = 0.5;
}

if( live_call() ) {
    return live_result;
} 

var dir = point_direction( x, y, scrRedGetPlayerX(), scrRedGetPlayerY() );
var spikeSpeed = 10;

var spike1 = instance_create( x, y, oRedS14TargetSpike );
spike1.speed = spikeSpeed;
spike1.direction = dir - 35;
spike1.image_angle = spike1.direction;

var spike2 = instance_create( x, y, oRedS14TargetSpike );
spike2.speed = spikeSpeed;
spike2.direction = dir;
spike2.image_angle = spike2.direction;

var spike3 = instance_create( x, y, oRedS14TargetSpike );
spike3.speed = spikeSpeed;
spike3.direction = dir + 35;
spike3.image_angle = spike3.direction;

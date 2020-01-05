var circleX = argument0;
var circleY = argument1;

if( live_call( circleX, circleY ) ) {
    return live_result;
}

var circle = scrRedCreateCircleAdditionalParams();
circle.Speed = 30;
circle.SlowDelay = 12;
scrRedInitializeCircle( circleX, circleY, random( 360 ), 20, oRedS13CircleSpike, circle );

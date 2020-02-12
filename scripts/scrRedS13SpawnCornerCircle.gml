var circleX = argument0;
var circleY = argument1;

var circle = scrRedCreateCircleAdditionalParams();
circle.Speed = 28;
circle.SlowDelay = 12;
scrRedInitializeCircle( circleX, circleY, random( 360 ), 20, oRedS13CircleSpike, circle );

var isRightWall = argument0;
var duration = argument1;

var targetWall;
var destX;
var spikeObj;
if( isRightWall ) {
    targetWall = oRedRightBlock;
    destX = 800 - 32;
    spikeObj = oRedS7LeftWallSpike;
} else {
    targetWall = oRedLeftBlock;
    destX = 0;
    spikeObj = oRedS7RightWallSpike;
}

with( spikeObj ) {
    scrRedMoveInstance( id, destX, y, duration, scrRedTweenSineIn );
    alarm[0] = duration;
}

with( targetWall ) {
    scrRedMoveInstance( id, destX, y, duration, scrRedTweenSineIn );
}

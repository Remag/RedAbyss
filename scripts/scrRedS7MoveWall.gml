var moveLeft = argument0;
var duration = argument1;
var distance = argument2;
distance = min( distance, 320 );

var targetWall;
var destWallX;
var spikeObj;
var spikeX;
var destSpikeX;
if( moveLeft ) {
    targetWall = oRedRightBlock;
    destWallX = 800 - 32 - distance;
    spikeObj = oRedS7LeftWallSpike;
    spikeX = 800 - 32;
    destSpikeX = destWallX - 32;
} else {
    targetWall = oRedLeftBlock;
    destWallX = distance;
    spikeObj = oRedS7RightWallSpike;
    spikeX = 0;
    destSpikeX = destWallX + 32;
}

for( var i = 0; i < 19; i++ ) {
    var spikeY = i * 32;
    instance_create( spikeX, spikeY, spikeObj );
}

with( spikeObj ) {
    scrRedMoveInstance( id, destSpikeX, y, duration, scrRedTweenSineOut );
}

with( targetWall ) {
    scrRedMoveInstance( id, destWallX, y, duration, scrRedTweenSineOut );
}


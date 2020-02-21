var moveLeft = argument0;
var duration = argument1;
var distance = argument2;
distance = min( distance, 320 );

var targetWall;
var destWallX;
var spikeObj;
var spikeX;
var destSpikeX;
var targetCLine;
var targetFLine;
if( moveLeft ) {
    targetWall = oRedRightBlock;
    destWallX = 800 - 32 - distance;
    spikeObj = oRedS7LeftWallSpike;
    spikeX = 800 - 32;
    destSpikeX = destWallX - 32;
    targetCLine = scrRedGetRCLine();
    targetFLine = scrRedGetRFLine();
} else {
    targetWall = oRedLeftBlock;
    destWallX = distance;
    spikeObj = oRedS7RightWallSpike;
    spikeX = 0;
    destSpikeX = destWallX + 32;
    targetCLine = scrRedGetLCLine();
    targetFLine = scrRedGetLFLine();
}

var flash1 = scrRedCreateActiveImpulse( targetCLine, 150, c_red, 0 );
flash1.image_xscale = 8;
var flash2 = scrRedCreateActiveImpulse( targetFLine, 150, c_red, 0 );
flash2.image_xscale = 8;
var flash3 = scrRedCreateActiveImpulse( targetCLine, 608 - 32 - 150, c_red, 0 );
flash3.image_xscale = 8;
var flash4 = scrRedCreateActiveImpulse( targetFLine, 608 - 32 - 150, c_red, 0 );
flash4.image_xscale = 8;
scrRedChangeInstanceAlpha( flash1, 1, duration / 1.5 );
scrRedChangeInstanceAlpha( flash2, 1, duration / 1.5 );
scrRedChangeInstanceAlpha( flash3, 1, duration / 1.5 );
scrRedChangeInstanceAlpha( flash4, 1, duration / 1.5 );

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
scrRedMoveInstanceX( targetCLine, targetCLine.xstart - targetWall.xstart + destWallX, duration, scrRedTweenSineOut );
scrRedMoveInstanceX( targetFLine, targetFLine.xstart - targetWall.xstart + destWallX, duration, scrRedTweenSineOut );

/// scrRedMoveInstance( targetId, destX, destY, duration, opt_smoothingScript )
var targetId = argument[0];
var destX = argument[1];
var destY = argument[2];
var duration = argument[3];
var smoother = scrRedTweenSineInOut;
if( argument_count > 4 ) {
    smoother = argument[4];
}

with( targetId ) {
    var command = instance_create( 0, 0, oRedMoveCommand );
    command.TargetId = id;
    command.StartX = x;
    command.StartY = y;
    command.DeltaX = destX - x;
    command.DeltaY = destY - y;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = smoother;
    CurrentMoveCommand = command;
}

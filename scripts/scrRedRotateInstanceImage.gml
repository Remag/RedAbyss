/// scrRedRotateInstanceImage( targetId, targetDirection, duration, opt_smoothingScript )
var targetId = argument[0];
var destDir = argument[1];
var duration = argument[2];
var smoother = scrRedTweenSineInOut;
if( argument_count > 3 ) {
    smoother = argument[3];
}

with( targetId ) {
    var command = instance_create( 0, 0, oRedImageRotateCommand );
    command.TargetId = id;
    command.StartDirection = image_angle;
    command.DeltaDirection = destDir - image_angle;
    command.Step = 0;
    command.Duration = duration;
    command.Smoother = smoother;
    CurrentRotateCommand = command;
}

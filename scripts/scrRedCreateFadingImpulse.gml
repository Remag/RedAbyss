/// scrRedCreateActiveImpulse( lineId, linePos, fadeInDelta, fadeOutDelta )

var line = argument0;
var linePos = argument1;
var fadeInDelta = argument2;
var fadeOutDelta = argument3;

var result = instance_create( linePos, 0, oRedFadingImpulse );
result.Line = line;
result.AlphaDelta = fadeInDelta;
result.FadeDelta = fadeOutDelta;
return result;

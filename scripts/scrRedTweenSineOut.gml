/// scrRedTweenSineOut( begin, totalDelta, step, duration )
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

return beginValue + totalDelta * sin( ( pi / 2 ) * step / duration );

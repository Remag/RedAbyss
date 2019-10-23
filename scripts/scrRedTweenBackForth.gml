/// scrRedTweenBackForth( begin, totalDelta, step, duration )
var beginValue = argument0;
var totalDelta = argument1;
var step = argument2;
var duration = argument3;

var ratio = step / duration;
if( ratio <= 0.5 ) {
    return beginValue - totalDelta / 2 * ( cos( pi * ratio * 2 ) - 1 );
} else {
    return beginValue + totalDelta + totalDelta / 2 * ( cos( pi * 2 * ( ratio - 0.5 ) ) - 1 );
}

/// scrRedFindSpikeWaveOffset(step, spikeOffset)
var step = argument0, spikeOffset = argument1;
var wavePhase = step % 100 + spikeOffset;
wavePhase = min( wavePhase, 100 - wavePhase );
return scrRedTweenSineInOut( 0, 16, wavePhase, 50 );

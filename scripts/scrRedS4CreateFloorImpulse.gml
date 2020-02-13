var floorX = argument0;

var impulse1 = instance_create( floorX, 0, oRedS4LineImpulse );
impulse1.Line = scrRedGetBCLine();
var impulse2 = instance_create( floorX, 0, oRedS4LineImpulse );
impulse2.Line = scrRedGetBFLine();

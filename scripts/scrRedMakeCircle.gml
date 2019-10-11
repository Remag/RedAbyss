///scrMakeCircle(x,y,angle,numprojectiles,speed,obj)
///spawns a ring of projectiles
///argument0 - spawn X
///argument1 - spawn Y
///argument2 - starting angle
///argument3 - number of projectiles to spawn
///argument4 - projectile to spawn

var spawnX = argument0;
var spawnY = argument1;
var spawnAngle = argument2;
var spawnNum = argument3;
var spawnObj = argument4;

for( var i = 0; i < spawnNum; i++ ) {
    var bullet = instance_create( spawnX, spawnY, spawnObj );
    bullet.direction = spawnAngle + i * ( 360 / spawnNum );
}

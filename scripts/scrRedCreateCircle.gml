/// scrRedCreateCircle(x,y,angle,numprojectiles,obj)
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

var circle = instance_create( spawnX, spawnY, oRedBulletCircle );
circle.CircleBulletObj = spawnObj;
for( var i = 0; i < spawnNum; i++ ) {
    var bullet = instance_create( spawnX, spawnY, oRedDummyObj );
    bullet.direction = spawnAngle + i * ( 360 / spawnNum );
    bullet.start_direction = bullet.direction;
    bullet.Circle = circle;
    with( bullet ) {
        instance_change( spawnObj, true );
    }
}
return circle;

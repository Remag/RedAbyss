var t = argument0;

if( t == 702 || t == 790 || t == 886 ) {
    var vlSpawner = instance_create( 200, 0, oRedS3JitterSpawnerBullet );
    vlSpawner.speed = 15;
    vlSpawner.direction = -90;
    vlSpawner.gravity_direction = 90;
    vlSpawner.gravity = 0.4;
    vlSpawner.CurveDir = 1;
    vlSpawner.SpawnImageMin = 1;
    vlSpawner.SpawnImageMax = 3;
    
    var vrSpawner = instance_create( 600, 0, oRedS3JitterSpawnerBullet );
    vrSpawner.speed = 15;
    vrSpawner.direction = -90;
    vrSpawner.gravity_direction = 90;
    vrSpawner.gravity = 0.4;
    vrSpawner.CurveDir = -1;
    vrSpawner.SpawnImageMin = 5;
    vrSpawner.SpawnImageMax = 7;
} else if( t == 1047 || t == 1132 || t == 1221 ) {
    var hlSpawner = instance_create( 0, 200, oRedS3JitterSpawnerBullet );
    hlSpawner.Spawner.SpawnPeriod = 16;
    hlSpawner.speed = 14;
    hlSpawner.direction = 0;
    hlSpawner.gravity_direction = 180;
    hlSpawner.gravity = 0.4;
    hlSpawner.CurveDir = -1;
    hlSpawner.SpawnImageMin = 1;
    hlSpawner.SpawnImageMax = 3;
    
    var hrSpawner = instance_create( 800, 200, oRedS3JitterSpawnerBullet );
    hrSpawner.Spawner.SpawnPeriod = 16;
    hrSpawner.speed = 14;
    hrSpawner.direction = 180;
    hrSpawner.gravity_direction = 0;
    hrSpawner.gravity = 0.4;
    hrSpawner.CurveDir = 1;
    hrSpawner.SpawnImageMin = 5;
    hrSpawner.SpawnImageMax = 7;
    
} else if( t == 965 || t == 1313 ) {
    with( oRedS3JitterBullet ) {
        alarm[0] = -1;
        friction = 0.2;
    }  
} else if( t == 1000 ) {
    with( oRedS3JitterBullet ) {
        direction = point_direction( x, y, 400, 304 ) - 100;
        friction = -0.25;
        TrailCount--;
        PrevPositionsIndex = 0;
    }
} else if( t == 1350 ) {
    with( oRedS3JitterBullet ) {
        direction = point_direction( x, y, 400, 304 ) + 100;
        friction = -0.25;
        TrailCount--;
        PrevPositionsIndex = 0;
    }
}

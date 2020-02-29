var bullet = scrRedSpawnSectorBullet( DirIndex, 16, oRedS15FinalBurstBullet );
bullet.speed = random_range( MinSpeed, MaxSpeed );
scrRedAttachTrail( bullet, round( TrailCount ) );

var bullet2 = instance_create( x, y, oRedS15FinalBurstBullet );
bullet2.speed = bullet.speed;
bullet2.direction = bullet.direction + 180;
scrRedAttachTrail( bullet2, round( TrailCount ) );

DirIndex++;

MinSpeed += 0.190;
MaxSpeed += 0.190;
TrailCount += 0.01;

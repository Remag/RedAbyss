var bullet = scrRedSpawnSectorBullet( DirIndex, 8, oRedS15FinalBurstBullet );
bullet.speed = random_range( MinSpeed, MaxSpeed );
scrRedAttachTrail( bullet, round( TrailCount ) );

DirIndex++;

MinSpeed += 0.095;
MaxSpeed += 0.095;
TrailCount += 0.01;

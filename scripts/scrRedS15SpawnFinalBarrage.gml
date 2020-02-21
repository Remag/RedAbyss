var bullet = scrRedSpawnSectorBullet( DirIndex, 6, oRedS15FinalBurstBullet );
bullet.speed = random_range( MinSpeed, MaxSpeed );
scrRedAttachTrail( bullet, round( TrailCount ) );

DirIndex++;

MinSpeed += 0.090;
MaxSpeed += 0.090;
TrailCount += 0.01;

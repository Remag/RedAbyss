if( live_call() ) {
    return live_result;
}

var bullet = instance_create( x, y, oRedS15FinalBurstBullet );
bullet.speed = random_range( MinSpeed, MaxSpeed );
MinSpeed += 0.095;
MaxSpeed += 0.095;

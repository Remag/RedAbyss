
var gapOffset = 225;
var gapHWidth = 60;
var gapY = random_range( gapOffset, 600 - gapHWidth );

for( var wallY = 0; wallY < gapY - gapHWidth; wallY += 32 ) {
    var spike = instance_create( WallX, wallY, oRedS15WallSpike );
    spike.direction = WallDir;
    spike.image_angle = WallDir;
    spike.speed = 4;
    spike.Spawner = id;
}

for( var wallY = gapY + gapHWidth; wallY < 608; wallY += 32 ) {
    var spike = instance_create( WallX, wallY, oRedS15WallSpike );
    spike.direction = WallDir;
    spike.image_angle = WallDir;
    spike.speed = 4;
    spike.Spawner = id;
}


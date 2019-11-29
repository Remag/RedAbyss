#define scrRedS9DualityStep
var t = argument0;

if( t == 4189 ) {
    instance_create( 0, 0, oRedS9SurfaceDrawInitiator );
    instance_create( 0, 0, oRedS9SurfaceDrawFinalizer );
    var separator = instance_create( 0, 0, oRedS9ScreenSeparator );
    separator.TargetSeparationX = 350;

    var leftSrc = instance_create( 0, 0, oRedS9DualSource );
    leftSrc.AngleDelta = 2;
    leftSrc.FruitIndex = 0;
    var rightSrc = instance_create( 0, 0, oRedS9DualSource );
    rightSrc.AngleDelta = -2;
    rightSrc.FruitIndex = 7;
    scrRedS9SwitchMovePointsX( rightSrc );
    scrRedS9SwitchMovePointsY( rightSrc );
    scrRedAttachSpawner( leftSrc, 2, oRedS9DualBullet );
    scrRedAttachSpawner( rightSrc, 2, oRedS9DualBullet );
}

if( t == 4220 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 500;
    }
    scrRedS9Shake( -4 );
} else if( t == 4306 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 250;
    }
    scrRedS9Shake( 4 );
} else if( t == 4391 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 650;
    }
    scrRedS9Shake( -5 );
} else if( t == 4481 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 250;
    }
    scrRedS9Shake( 5 );
} else if( t == 4564 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 620;
    }
    scrRedS9Shake( -6 );
} else if( t == 4652 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 200;
    }
    scrRedS9Shake( 6 );
} else if( t == 4737 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 350;
    }
    scrRedS9Shake( -1 );
} else if( t == 4828 ) {
    with( oRedS9ScreenSeparator ) {
        TargetSeparationX = 0;
    }
    scrRedShakeViewAngle( 6, 40 );
} else if( t == 4875 ) {
    scrRedFlashScreen( c_white, 10, 100 );
} else if( t == 4885 ) {
    scrRedDestroy( oRedS9ScreenSeparator );
    scrRedDestroy( oRedS9DualBullet );
    scrRedDestroy( oRedS9DualSource );
    scrRedDestroy( oRedS9SurfaceDrawInitiator );
    scrRedDestroy( oRedS9SurfaceDrawFinalizer );
}


#define scrRedS9SwitchMovePointsX
var targetId = argument0;

var endX = targetId.XEnd;
targetId.XEnd = targetId.XStart;
targetId.XStart = endX;

#define scrRedS9SwitchMovePointsY
var targetId = argument0;

var endY = targetId.YEnd;
targetId.YEnd = targetId.YStart;
targetId.YStart = endY;

#define scrRedS9Shake
var side = argument0;

scrRedShakeViewAngle( side, 25 );
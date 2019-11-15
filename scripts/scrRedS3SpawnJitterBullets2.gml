var circleParams = scrRedCreateCircleAdditionalParams();
circleParams.CurveDir = OwnerInstance.CurveDir;
circleParams.SpawnImageMin = OwnerInstance.SpawnImageMin;
circleParams.SpawnImageMax = OwnerInstance.SpawnImageMax;
scrRedInitializeCircle( x, y, random( 360 ), 8, oRedS3JitterBullet, circleParams );

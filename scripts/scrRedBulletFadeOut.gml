var targetId = argument[0];

var fadeDelta;
if( argument_count >= 2 ) {
    fadeDelta = argument[1];
} else {
    fadeDelta = 0.05;
}
var deactivateProjectiles = argument_count < 3 || !argument[2];

with( oRedAbyssAvoidanceController ) {
    ds_list_add( FadeIdList, targetId );
    ds_list_add( FadeValueList, 1.0 );
    ds_list_add( FadeDeltaList, fadeDelta );
}

if( deactivateProjectiles ) {
    scrRedDeactivateBullets( targetId );
}

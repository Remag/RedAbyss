var targetId = argument[0];

var fadeDelta;
if( argument_count >= 2 ) {
    fadeDelta = argument[1];
} else {
    fadeDelta = 0.05;
}

with( oRedAbyssAvoidanceController ) {
    ds_list_add( FadeIdList, targetId );
    ds_list_add( FadeValueList, 1.0 );
    ds_list_add( FadeDeltaList, fadeDelta );
}


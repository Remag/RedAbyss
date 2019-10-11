var targetId = argument0;
var isActive = argument1;

with( oRedAbyssAvoidanceController ) {
    var listCount = ds_list_size( DeactivatedIdList );
    for( var i = 0; i < listCount; i++ ) {
        if( DeactivatedIdList[|i] == targetId ) {
            if( isActive ) {
                ds_list_delete( DeactivatedIdList, i );
            }
            return 0;
        }
    }
    if( !isActive ) {
        ds_list_add( DeactivatedIdList, targetId );
    }
}

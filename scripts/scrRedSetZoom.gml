var zoom = argument0;

var zoomFactor = 0.1;
zoom = ( zoom + zoomFactor ) / ( 1 + zoomFactor );

view_wview[0] = 800 * zoom;
view_hview[0] = 608 * zoom;

view_xview[0] = ( 800 - view_wview[0] ) / 2;
view_yview[0] = ( 608 - view_hview[0] ) / 2;



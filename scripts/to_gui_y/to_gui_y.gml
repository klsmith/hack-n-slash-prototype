function to_gui_y(argument0, argument1) {
	var scale = (__view_get( e__VW.HPort, argument1 ) / __view_get( e__VW.HView, argument1 ));
	return (argument0 - __view_get( e__VW.YView, argument1 )) * scale;
}

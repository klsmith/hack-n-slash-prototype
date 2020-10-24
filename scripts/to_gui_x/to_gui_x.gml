function to_gui_x(argument0, argument1) {
	var scale = (__view_get( e__VW.WPort, argument1 ) / __view_get( e__VW.WView, argument1 ))
	return (argument0 - __view_get( e__VW.XView, argument1 )) * scale;
}

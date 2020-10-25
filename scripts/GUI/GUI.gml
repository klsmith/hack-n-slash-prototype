
function to_gui_x(value, view_id) {
	var scale = (__view_get( e__VW.WPort, view_id ) / __view_get( e__VW.WView, view_id ))
	return (value - __view_get( e__VW.XView, view_id )) * scale;
}

function to_gui_y(value, view_id) {
	var scale = (__view_get( e__VW.HPort, view_id ) / __view_get( e__VW.HView, view_id ));
	return (value - __view_get( e__VW.YView, view_id )) * scale;
}
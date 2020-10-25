
function to_gui_x(value, view_id) {
	var scale = (__view_get( e__VW.WPort, view_id ) / __view_get( e__VW.WView, view_id ))
	return (value - __view_get( e__VW.XView, view_id )) * scale;
}

function to_gui_y(value, view_id) {
	var scale = (__view_get( e__VW.HPort, view_id ) / __view_get( e__VW.HView, view_id ));
	return (value - __view_get( e__VW.YView, view_id )) * scale;
}

function resize_and_center_window(view_id) {
	var xx = (display_get_width() - view_wport[view_id]) * 0.5,
		yy = (display_get_height() - view_hport[view_id]) * 0.5,
		ww = view_wport[view_id],
		hh = view_hport[view_id];
	window_set_rectangle(xx, yy, ww, hh);
	surface_resize(application_surface, ww, hh);
}
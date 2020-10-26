function to_gui_x(value, view_id) {
	var camera = view_get_camera(view_id),
		scale = display_get_gui_width() / camera_get_view_width(camera);
	return (value - camera_get_view_x(camera)) * scale;
}

function to_gui_y(value, view_id) {
	var camera = view_get_camera(view_id),
		scale = display_get_gui_height() / camera_get_view_height(camera);
	return (value - camera_get_view_y(camera)) * scale;
}

function resize_and_center_window(view_id) {
	var xx = (display_get_width() - view_wport[view_id]) * 0.5,
		yy = (display_get_height() - view_hport[view_id]) * 0.5,
		ww = view_wport[view_id],
		hh = view_hport[view_id];
	window_set_rectangle(xx, yy, ww, hh);
	surface_resize(application_surface, ww, hh);
}
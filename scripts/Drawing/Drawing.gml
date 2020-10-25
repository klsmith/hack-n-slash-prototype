
function draw_ellipse_centered(center_x, center_y, width, height, outline) {
	var w_radius = width / 2,
	    h_radius = height / 2;
	draw_ellipse(
	    center_x - w_radius,
	    center_y - h_radius,
	    center_x + w_radius,
	    center_y + h_radius,
	    outline
	);
}

function draw_drop_shadow() {
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	var shadow_w = bbox_right - bbox_left,
		shadow_h = bbox_bottom - bbox_top,
		shadow_x = bbox_left + (shadow_w / 2) - 0.5,
		shadow_y = bbox_bottom;
	draw_ellipse_centered(shadow_x, shadow_y, shadow_w, shadow_h, false);
}
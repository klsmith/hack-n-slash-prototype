
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

/*
function draw_drop_shadow() {
	var previous_color = draw_get_colour(),
	    previous_alpha = draw_get_alpha();
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	var ew = sprite_width / 3;
	var eh = sprite_height / 5;
	var x_offset = -1;
	var y_offset = (sprite_height / 4);
	var xx = x + x_offset;
	var yy = y + y_offset;
	var ew2 = ew / 2;
	var eh2 = eh / 2;
	draw_ellipse(xx - ew2, yy - eh2, xx + ew2, yy + eh2, false);
	draw_set_color(previous_color);
	draw_set_alpha(previous_alpha);
}
*/
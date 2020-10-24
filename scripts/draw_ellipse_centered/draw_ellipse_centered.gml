function draw_ellipse_centered(argument0, argument1, argument2, argument3, argument4) {
	var arg_x = argument0,
	    arg_y = argument1,
	    arg_wradius = argument2 / 2,
	    arg_hradius = argument3 / 2,
	    arg_outline = argument4;

	draw_ellipse(
	    arg_x - arg_wradius,
	    arg_y - arg_hradius,
	    arg_x + arg_wradius,
	    arg_y + arg_hradius,
	    arg_outline
	);
}

if (global.show_collision_masks) {
    draw_set_alpha(1);
    draw_set_font(font_debug);
    draw_set_color(c_white);
	var text = "  self (" + string(x) + ", " + string(y) + ")"
             + "\ntarget (" + string(target_x) + ", " + string(target_y) + ")"
             + "\n speed = " + string(speed),
        ww = string_width(string(text)),
        hh = string_height(string(text)),
        xx = to_gui_x(x, 0) - ww / 2,
        yy = to_gui_y(y - sprite_yoffset, 0) - hh;
    draw_text(xx, yy, string(text));
}


if (global.show_collision_masks) {
    var text = "  self (" + string(x) + ", " + string(y) + ")"
            + "#target (" + string(target_x) + ", " + string(target_y) + ")"
            + "# speed = " + string(speed),
        ww = string_width(string_hash_to_newline(text)),
        hh = string_height(string_hash_to_newline(text)),
        xx = to_gui_x(x, 0) - ww / 2,
        yy = to_gui_y(y - sprite_yoffset, 0) - hh;
    draw_set_alpha(1);
    draw_set_font(font_debug);
    draw_set_color(c_white);
    draw_text(xx, yy, string_hash_to_newline(text));
}



var xxx = display_mouse_get_x() - window_get_x() > 0
    && display_mouse_get_x() - window_get_x() < window_get_width();
var yyy = display_mouse_get_y() - window_get_y() > 0
    && display_mouse_get_y() - window_get_y() < window_get_height();
if (xxx && yyy) {
    draw_set_color(c_red);
    draw_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 2, false);
}


draw_set_color(c_black);
draw_set_alpha(0.5);
draw_ellipse_centered(x - 1, y + (sprite_height / 3), sprite_width, sprite_height * 0.5, false);
draw_self();
if (global.show_collision_masks) {
    draw_set_color(c_yellow);
    draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
}


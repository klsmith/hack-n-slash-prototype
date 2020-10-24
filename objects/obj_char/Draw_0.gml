draw_set_alpha(0.5);
draw_set_colour(c_black);
var ew = sprite_width / 3;
var eh = sprite_height / 5;
var x_offset = -1;
var y_offset = (sprite_height / 4);
var xx = x + x_offset;
var yy = y + y_offset;
draw_ellipse_centered(xx, yy, ew, eh, false);
draw_self();
if (global.show_collision_masks) {
    draw_set_color(c_aqua);
    draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom, true);
}


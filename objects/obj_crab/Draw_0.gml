draw_drop_shadow()
draw_self();
if (global.show_collision_masks) {
	draw_set_alpha(1);
    draw_set_color(c_yellow);
    draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
}
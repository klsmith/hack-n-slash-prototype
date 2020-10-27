var radius_x = sprite_width * 4,
	radius_y = sprite_height * 4;
do {
    target_x = x + random_range(-radius_x, radius_x);
    target_y = y + random_range(-radius_y, radius_y);
} until (place_empty(target_x, target_y)
		&& !collision_line(x, y, target_x, target_y, obj_wall, false, true)
		&& !collision_line(x, y, target_x, target_y, obj_crab, false, true)
		&& !collision_line(x, y, target_x, target_y, obj_char, false, true));
with(instance_create_depth(x, y, -y, obj_crab_move)) {
    target_x = other.target_x;
    target_y = other.target_y;
    event_user(0);
}
instance_destroy();


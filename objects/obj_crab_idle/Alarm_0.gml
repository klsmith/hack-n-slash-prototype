do {
    target_x = x + random_range(-(sprite_width * 2), sprite_width * 2);
    target_y = y + random_range(-(sprite_height * 2), sprite_height * 2);
} until (place_empty(target_x, target_y));
with(instance_create(x, y, obj_crab_move)) {
    target_x = other.target_x;
    target_y = other.target_y;
    event_user(0);
}
instance_destroy();


sprite_index = scr_sprite_direction(
    spr_char_slash_down_right,
    spr_char_slash_up_right,
    spr_char_slash_up_right,
    spr_char_slash_up_left,
    spr_char_slash_up_left,
    spr_char_slash_down_left,
    spr_char_slash_down_left,
    spr_char_slash_down_right
);
with(instance_create(x, y, obj_sword)) {
    owner = other;
    direction = other.direction;
	push_speed = global.slash_speed * 4;
    event_user(0);
}


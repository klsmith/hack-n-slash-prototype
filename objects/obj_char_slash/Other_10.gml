sprite_index = sprite_8_direction(
    spr_char_slash_down_right,
    spr_char_slash_up_right,
    spr_char_slash_up_right,
    spr_char_slash_up_left,
    spr_char_slash_up_left,
    spr_char_slash_down_left,
    spr_char_slash_down_left,
    spr_char_slash_down_right
);
with(instance_create_depth(x, y, -y, obj_sword)) {
    owner = other;
    direction = other.direction;
    event_user(0);
}
var dx = 0;
var dy = 0;

if (controls_right()) {
    dx += 1;
}
if (controls_left()) {
    dx -= 1;
}
if (controls_up()) {
    dy -= 1;
}
if (controls_down()) {
    dy += 1;
}

if (dx != 0 || dy != 0) {
    direction = point_direction(0, 0, dx, dy);
    speed = global.walk_speed;
    image_speed = 1;
}
else {
    speed = 0;
    image_index = 0;
    audio_stop_sound(sound_steps);
}
sprite_index = sprite_8_direction(
    spr_char_right,
    spr_char_up_right,
    spr_char_up,
    spr_char_up_left,
    spr_char_left,
    spr_char_down_left,
    spr_char_down,
    spr_char_down_right
);
if (speed = 0) {
    audio_stop_sound(sound_steps);
    if (image_index % 2 == 0) {
        image_speed = 0;
    }
}
else if (!audio_is_playing(sound_steps)) {
   audio_play_sound(sound_steps, 0, true);
}

if (controls_roll()) {
    with(instance_create_depth(x, y, -y, obj_char_roll)) {
        direction = other.direction;
        image_index = 0;
    }
    instance_destroy();
}
else if (controls_slash()) {
    with(instance_create_depth(x, y, -y, obj_char_slash)) {
        direction = other.direction;
        image_index = 0;
        event_user(0);
    }
    instance_destroy();
}


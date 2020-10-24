if (controls_decrease_lookahead()) {
    global.lookahead_factor -= 0.01;
}
if (controls_increase_lookahead()) {
    global.lookahead_factor += 0.01;
}
if (controls_toggle_debug()) {
    global.show_collision_masks = !global.show_collision_masks;
}
if (controls_restart_game()) {
    game_restart();
}
if (controls_end_game()) {
    game_end();
}


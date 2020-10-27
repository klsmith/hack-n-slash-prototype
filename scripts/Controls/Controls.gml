// Extra Key Constants
#macro vk_lbracket 219
#macro vk_rbracket 221
#macro vk_a ord("A")
#macro vk_d ord("D")
#macro vk_m ord("M")
#macro vk_s ord("S")
#macro vk_r ord("R")
#macro vk_w ord("W")

/* Gamepad */
global.connected_gamepad = 0;
function detect_connected_gamepad() {
	for(var i = 0; i < gamepad_get_device_count(); i++) {
		var is_connected = gamepad_is_connected(i),
			guid = gamepad_get_guid(i);
		if (is_connected
			&& guid != "none"
			&& guid != "device index out of range") {
			global.connected_gamepad = i;
			gamepad_set_axis_deadzone(i, 0.5);
			return;
		}
	}
}

/* DOWN */
function controls_down() {
	return keyboard_check(vk_s)
		|| keyboard_check(vk_down)
		|| gamepad_button_check(global.connected_gamepad, gp_padd)
		|| gamepad_axis_value(global.connected_gamepad, gp_axislv) > 0;
}

/* LEFT */
function controls_left() {
	return keyboard_check(vk_a)
		|| keyboard_check(vk_left)
		|| gamepad_button_check(global.connected_gamepad, gp_padl)
		|| gamepad_axis_value(global.connected_gamepad, gp_axislh) < 0; 
}

/* RIGHT */
function controls_right() {
	return keyboard_check(vk_d)
		|| keyboard_check(vk_right)
		|| gamepad_button_check(global.connected_gamepad, gp_padr)
		|| gamepad_axis_value(global.connected_gamepad, gp_axislh) > 0;
}

/* UP */
function controls_up() {
	return keyboard_check(vk_w)
		|| keyboard_check(vk_up)
		|| gamepad_button_check(global.connected_gamepad, gp_padu)
		|| gamepad_axis_value(global.connected_gamepad, gp_axislv) < 0;
}

/* ROLL */
function controls_roll() {
	 return keyboard_check_pressed(vk_space)
		|| mouse_check_button_pressed(mb_right)
		|| gamepad_button_check_pressed(global.connected_gamepad, gp_face1);
}

/* SLASH */
function controls_slash() {
	return mouse_check_button_pressed(mb_left)
		|| gamepad_button_check_pressed(global.connected_gamepad, gp_face3);
}

/* DECREASE LOOKAHEAD */
function controls_decrease_lookahead() {
	return keyboard_check(vk_lbracket);
}

/* INCREASE LOOKAHEAD */
function controls_increase_lookahead() {
	return keyboard_check(vk_rbracket);
}

/* TOGGLE DEBUG */
function controls_toggle_debug() {
	return keyboard_check_pressed(vk_m);
}

/* RESTART GAME */
function controls_restart_game() {
	return keyboard_check_pressed(vk_r);
}

/* END GAME */
function controls_end_game() {
	return keyboard_check_pressed(vk_escape);
}


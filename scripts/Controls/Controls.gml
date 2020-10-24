// Extra Key Constants
#macro vk_lbracket 219
#macro vk_rbracket 221

/* Control Logic */
function controls() {
	var result;
	for(var i = 0; i < argument_count; i++) {
		var control = argument[i];
		var c_method = control[0];
		var c_button = control[1];
		// undefined makes the method run as 'self'
		result = method(undefined, c_method)(c_button);
		if (result) {
			break;
		}
	}
	return result
}

/* DOWN */
function controls_down() {
	return controls(
		[keyboard_check, ord("S")], 
		[keyboard_check, vk_down]
	);
}

/* LEFT */
function controls_left() {
	return controls(
		[keyboard_check, ord("A")], 
		[keyboard_check, vk_left]
	);
}

/* RIGHT */
function controls_right() {
	return controls(
		[keyboard_check, ord("D")], 
		[keyboard_check, vk_right]
	);
}

/* UP */
function controls_up() {
	return controls(
		[keyboard_check, ord("W")], 
		[keyboard_check, vk_up]
	);
}

/* ROLL */
function controls_roll() {
	 return controls(
		[keyboard_check_pressed, vk_space],
		[mouse_check_button_pressed, mb_right]
	 );
}

/* SLASH */
function controls_slash() {
	return controls(
		[mouse_check_button_pressed, mb_left]
	);
}

/* DECREASE LOOKAHEAD */
function controls_decrease_lookahead() {
	return controls(
		[keyboard_check, vk_lbracket]
	);
}

/* INCREASE LOOKAHEAD */
function controls_increase_lookahead() {
	return controls(
		[keyboard_check, vk_rbracket]
	);
}

/* TOGGLE DEBUG */
function controls_toggle_debug() {
	return controls(
		[keyboard_check_pressed, ord("M")]
	);
}

/* RESTART GAME */
function controls_restart_game() {
	return controls(
		[keyboard_check_pressed, ord("R")]
	);
}

/* END GAME */
function controls_end_game() {
	return controls(
		[keyboard_check_pressed, vk_escape]
	);
}


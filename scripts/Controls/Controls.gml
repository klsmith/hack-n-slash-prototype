// Extra Key Constants
#macro vk_lbracket 219
#macro vk_rbracket 221

/* Control Logic */
function controls() {
	var result;
	for(var i = 0; i < argument_count; i++) {
		// run argument as function
		result = argument[i]();
		if (result) {
			// if it returns true, short-circuit the loop!
			break;
		}
	}
	return result
}

/* DOWN */
function controls_down() {
	return controls(
		function() { return keyboard_check(ord("S")); },
		function() { return keyboard_check(vk_down); }
	);
}

/* LEFT */
function controls_left() {
	return controls(
		function() { return keyboard_check(ord("A")); },
		function() { return keyboard_check(vk_left); }
	);
}

/* RIGHT */
function controls_right() {
	return controls(
		function() { return keyboard_check(ord("D")); },
		function() { return keyboard_check(vk_right); }
	);
}

/* UP */
function controls_up() {
	return controls(
		function() { return keyboard_check(ord("W")); },
		function() { return keyboard_check(vk_up); }
	);
}

/* ROLL */
function controls_roll() {
	 return controls(
		function() { return keyboard_check_pressed(vk_space); },
		function() { return mouse_check_button_pressed(mb_right); }
	 );
}

/* SLASH */
function controls_slash() {
	return controls(
		function() { return mouse_check_button_pressed(mb_left); }
	);
}

/* DECREASE LOOKAHEAD */
function controls_decrease_lookahead() {
	return controls(
		function() { return keyboard_check(vk_lbracket); }
	);
}

/* INCREASE LOOKAHEAD */
function controls_increase_lookahead() {
	return controls(
		function() { return keyboard_check(vk_rbracket); }
	);
}

/* TOGGLE DEBUG */
function controls_toggle_debug() {
	return controls(
		function() { return keyboard_check_pressed(ord("M")); }
	);
}

/* RESTART GAME */
function controls_restart_game() {
	return controls(
		function() { return keyboard_check_pressed(ord("R")); }
	);
}

/* END GAME */
function controls_end_game() {
	return controls(
		function() { return keyboard_check_pressed(vk_escape); }
	);
}


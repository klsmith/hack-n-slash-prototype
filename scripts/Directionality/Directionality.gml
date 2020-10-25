#macro dir_right 0
#macro dir_up_right 45
#macro dir_up 90
#macro dir_up_left  135
#macro dir_left 180
#macro dir_down_left 225
#macro dir_down 270
#macro dir_down_right 315
#macro dir_max 360

function normalize_direction(dir) {
	while(dir >= dir_max || dir < dir_right) {
		if (dir >= dir_max) {
			dir -= dir_max;
		}
		if (dir < dir_right) {
			dir += dir_max;
		}
	}
	return dir;
}

function sprite_8_direction(
	right_sprite,
	up_right_sprite,
	up_sprite,
	up_left_sprite,
	left_sprite,
	down_left_sprite,
	down_sprite,
	down_right_sprite
) {
	direction = normalize_direction(direction);
	var offset = 45 / 2;
	if (direction >= dir_max - offset || direction < dir_right + offset) {
	    return right_sprite;
	}
	if (direction >= dir_up_right - offset && direction < dir_up_right + offset) {
	    return up_right_sprite;
	}
	if (direction >= dir_up - offset && direction < dir_up + offset) {
	    return up_sprite;
	}
	if (direction >= dir_up_left - offset && direction < dir_up_left + offset) {
	    return up_left_sprite;
	}
	if (direction >= dir_left - offset && direction < dir_left + offset) {
	    return left_sprite;
	}
	if (direction >= dir_down_left - offset && direction < dir_down_left + offset) {
	    return down_left_sprite;
	}
	if (direction >= dir_down - offset && direction < dir_down + offset) {
	    return down_sprite;
	}
	if (direction >= dir_down_right - offset && direction < dir_down_right + offset) {
	    return down_right_sprite;
	}
}

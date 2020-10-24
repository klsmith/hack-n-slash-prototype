function scr_sprite_direction() {
	var right = 0;
	var up = 90;
	var left = 180;
	var down = 270;
	var offset = 45 / 2;
	if (direction >= 360 - offset || direction < right + offset) {
	    return argument[0];
	}
	if (direction >= right + offset && direction < up - offset) {
	    return argument[1];
	}
	if (direction >= up - offset && direction < up + offset) {
	    return argument[2];
	}
	if (direction >= up + offset && direction < left - offset) {
	    return argument[3];
	}
	if (direction >= left - offset && direction < left + offset) {
	    return argument[4];
	}
	if (direction >= left + offset && direction < down - offset) {
	    return argument[5];
	}
	if (direction >= down - offset && direction < down + offset) {
	    return argument[6];
	}
	if (direction >= down + offset && direction < 360 - offset) {
	    return argument[7];
	}
}

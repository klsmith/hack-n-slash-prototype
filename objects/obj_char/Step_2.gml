if (place_meeting(x, y, obj_wall)
	|| place_meeting(x, y, obj_crab)) {
    move_outside_all(direction + 180, -1);
}
depth = -y;
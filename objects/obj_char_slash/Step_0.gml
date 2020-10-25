var new_x = x + lengthdir_x(speed, direction),
    new_y = y + lengthdir_y(speed, direction);
if (place_meeting(new_x, new_y, obj_crab)) {
    move_contact_solid(direction, speed);
    speed = 0;
}
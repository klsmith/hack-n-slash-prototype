with(other) {
    direction = other.direction;
    speed = global.roll_speed;
}
move_contact_solid(direction, speed);
speed = -(speed / 4);
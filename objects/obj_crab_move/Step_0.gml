event_inherited();
if (point_distance(x, y, target_x, target_y) < move_speed) {
    speed = 0;
    x = target_x;
    y = target_y;   
    instance_create(x, y, obj_crab_idle);
    instance_destroy();
} 
else {
    move_towards_point(target_x, target_y, move_speed);
}


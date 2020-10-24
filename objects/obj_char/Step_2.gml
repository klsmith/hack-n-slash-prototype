// force view to follow player
var max_lookahead = global.lookahead_factor * (speed *(sprite_width / 2));
var target_x = x + lengthdir_x(max_lookahead, direction);
var target_y = y + lengthdir_y(max_lookahead, direction);
var cam_x = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2);
var cam_y = __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2);
var cam_dir = point_direction(cam_x, cam_y, target_x, target_y);
var cam_dis = point_distance(cam_x, cam_y, target_x, target_y);
var lookaccel = max(speed, cam_dis / 8);
var cam_new_x = cam_x + lengthdir_x(min(cam_dis, lookaccel), cam_dir);
var cam_new_y = cam_y + lengthdir_y(min(cam_dis, lookaccel), cam_dir);

__view_set( e__VW.XView, 0, cam_new_x - (__view_get( e__VW.WView, 0 ) / 2 ));
__view_set( e__VW.YView, 0, cam_new_y - (__view_get( e__VW.HView, 0 ) / 2 ));

depth = -y;


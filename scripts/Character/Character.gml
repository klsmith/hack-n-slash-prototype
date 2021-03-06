global.walk_speed = 120 / room_speed;
global.roll_speed = 180 / room_speed;
global.slash_speed = 20 / room_speed;
global.lookahead_factor = 0.75;
global.show_collision_masks = false;

#macro char_cam 0

function char_cam_on_game_start() {
	view_enabled = true;
	view_set_visible(char_cam, true);
	view_set_wport(char_cam, 640);
	view_set_hport(char_cam, 512);
	resize_and_center_window(char_cam);
	var camera = camera_create_view(0, 0, 256, 204, 0, -1, 0, 0, 0, 0);
	view_set_camera(char_cam, camera);
	camera_set_update_script(camera, char_cam_update);
}

function char_cam_update() {
	var character = instance_find(obj_char, 0);
	if (character == noone) { 
		// no character to follow
		return;
	}
	var camera = view_get_camera(char_cam),
		max_lookahead = global.lookahead_factor * (character.speed * (character.sprite_width / 2)),
		target_x = character.x + lengthdir_x(max_lookahead, character.direction),
		target_y = character.y + lengthdir_y(max_lookahead, character.direction),
		cam_x = camera_get_view_x(camera),
		cam_y = camera_get_view_y(camera),
		cam_width = camera_get_view_width(camera),
		cam_height = camera_get_view_height(camera),
		cam_center_x = cam_x + (cam_width / 2),
		cam_center_y = cam_y + (cam_height / 2),
		cam_dir = point_direction(cam_center_x, cam_center_y, target_x, target_y),
		cam_dis = point_distance(cam_center_x, cam_center_y, target_x, target_y),
		lookaccel = max(character.speed, cam_dis / 8),
		cam_new_x = cam_x + lengthdir_x(min(cam_dis, lookaccel), cam_dir),
		cam_new_y = cam_y + lengthdir_y(min(cam_dis, lookaccel), cam_dir);
	camera_set_view_pos(camera, cam_new_x, cam_new_y);
}

function char_cam_on_game_end() {
	var camera = view_get_camera(char_cam);
	camera_destroy(camera);
}
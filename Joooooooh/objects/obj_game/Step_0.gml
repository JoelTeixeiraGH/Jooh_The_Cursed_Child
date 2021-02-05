if instance_exists(obj_player) {
camera_get_view_x(obj_player.x);
camera_get_view_y(obj_player.y);
camera_set_view_target(view_camera,obj_player);
} else {
	
}
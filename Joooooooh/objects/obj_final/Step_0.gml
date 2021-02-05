if instance_exists(obj_player) {
	instance_destroy (obj_player);
	}else{

	}

if keyboard_check_pressed(vk_enter) {
	game_end();
}
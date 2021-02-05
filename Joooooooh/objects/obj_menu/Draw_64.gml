if (instance_exists(obj_player)) {
	xt = 40;
	yt = 25;
	for (var i= 0; i < obj_player.hp_containers; i++) {
		ht_index = 0; // index imagens coracoes
		if ( i > 7) {
			xt = -23;
			yt = 35;
		}
		if (obj_player.hp >= (i+1)*8) {
			ht_index = 2;
		} else if (obj_player.hp >= (i+.5)*8) {
			ht_index = 1;
		}
		
		draw_sprite_ext(spr_hearts, ht_index, xt + i* 8, yt, 1, 1, 0, c_white, 1);
	}
		draw_sprite(spr_hudarma, 0 ,700, 45);
}

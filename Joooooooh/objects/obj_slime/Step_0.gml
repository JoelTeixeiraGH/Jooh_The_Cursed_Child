event_inherited();
if !collision_line(x,y,obj_player.x,obj_player.y,obj_wall_top,false,0) {
	mp_potential_step(obj_player.x,obj_player.y,0.5,1);
}

if hp == 0 {
	instance_destroy();
}


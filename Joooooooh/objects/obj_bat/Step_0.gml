event_inherited();
if !collision_line(x,y,obj_player.x,obj_player.y,obj_wall_top,false,0) {
	mp_potential_step(obj_player.x,obj_player.y,spd,1);
}

switch (direction div 90)
{
	case 0: sprite_index = spr_bat_right; break; ///right
	case 1: sprite_index = spr_bat_back break; ///up
	case 2: sprite_index = spr_bat; break; ///left
	case 3: sprite_index = spr_bat; break; ///down
}

if hp == 0 {
	instance_destroy();
}
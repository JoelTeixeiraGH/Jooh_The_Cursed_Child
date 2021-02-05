var dis = point_distance(x,y,obj_player.x,obj_player.y);
if (dis <= 600) {
	state = scr_bossAttack;
}

speed = 0.5

sprite_index = spr_bossIdle;
image_speed = 0.3;

if alarm[0] =-1 {
	alarm[0] = room_speed*3;
}
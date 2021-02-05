var dis = point_distance(x,y,obj_player.x,obj_player.y);
if (dis >= 500) {
	state = scr_bossIdle;
}
speed = 0;
sprite_index = spr_bossAttack;
image_speed = 0.15;
if alarm[1] = -1 {
	alarm[1] = 64;
	}
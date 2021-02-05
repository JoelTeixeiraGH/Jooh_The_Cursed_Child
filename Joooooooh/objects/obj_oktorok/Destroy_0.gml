if (scr_chance(.3)) {
	instance_create_layer(x+random_range(-4,4),y+random_range(-4,4),"Instances",obj_heart);
	
}

instance_create_layer(x,y,"Instances",obj_enemy_death);
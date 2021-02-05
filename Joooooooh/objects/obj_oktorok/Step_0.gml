event_inherited();
switch (state) {
	case "MOVING" : {
		switch (facing) {
			case enum_facing.up: {
				vx = 0;
				vy = -move_speed;
				break;
			}
				case enum_facing.right: {
				vx = move_speed;
				vy = 0;
				break;
			}
				case enum_facing.down: {
				vx = 0;
				vy = move_speed;
				break;
			}
				case enum_facing.left: {
				vx = -move_speed;
				vy = 0;
				break;
			}
		}
		if (irandom (100) < 1) facing = choose(enum_facing.up, enum_facing.right,enum_facing.down, enum_facing.left);
		if (irandom (300) < 1) {
			state = "SHOOTING";
			timer = 0;
		}
		image_angle = facing - 90;
		break;	
	}
	case "SHOOTING": {
		vx = 0;
		vy = 0;
		
		if (timer < 90) {
			if (timer == 60) {
			 with (instance_create_layer(x,y,"Instances",obj_projectile)) {
				direction = other.facing;
				speed = 4;
				 }
			}
			timer ++;
		} else {
			state = "MOVING";
		break;
	}
}
}


if (check_collision_object(vx, vy, obj_solid)) {
	facing = choose(enum_facing.up, enum_facing.right,enum_facing.down, enum_facing.left)	
}
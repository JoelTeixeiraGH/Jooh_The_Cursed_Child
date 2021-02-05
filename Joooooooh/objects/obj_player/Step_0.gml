anim_speed = 0.2;

switch(state) {
    case "ATTACK_SWORD_START": {
        image_speed = 0;
        vx = 0;
        vy = 0;
        timer = 15;
        sprite_index = sprite_attack;
        state = "ATTACK_SWORD";
        break;
    }
    case "ATTACK_SWORD": {
		Input.left = keyboard_check(ord("U"));
		Input.down = keyboard_check(ord("I"));
		Input.right = keyboard_check(ord("Y"));
		Input.up = keyboard_check(ord("M"));
		if (timer == 8) {
			switch (facing) {
				case 0: {
					with(instance_create_layer(x, y-12,"Instances",obj_sword)){
						image_angle = 0;
					}
					break;
				}
				case 1: {
					with(instance_create_layer(x+12, y,"Instances",obj_sword)) {
						image_angle = 270;
					}
					break;
				}
				case 2: {
					with (instance_create_layer(x, y+12,"Instances",obj_sword)) {
						image_angle = 180;
					}
					break;
				}
				case 3: {
					with (instance_create_layer(x-12, y,"Instances",obj_sword)) {
						image_angle = 90;
					}
					break;
				}
			}
		}
        if (timer > 0) {
            timer -= 1;
        } else {
            state = "IDLE";
        }
        break;
    }
    case "IDLE": {
        image_speed = 0;
		sprite_index = sprite_walk;
        vx = 0;
        vy = 0;
        check_inputs_all()
        break;
    }
    case "UP": {
		facing = 0;
        image_speed = anim_speed;
		sprite_walk = spr_player_up;
		sprite_attack = spr_player_attack_up;
        sprite_index = sprite_walk;
        vx = align_to_grid(x,4);
        vy = -1 * player_speed;
        
        check_inputs_all()
        break;
    }
    case "DOWN": {
		facing = 2;
        image_speed = anim_speed;
		sprite_walk = spr_player_down;
		sprite_attack = spr_player_attack_down;
        sprite_index = sprite_walk;
        vx = align_to_grid(x,4);
        vy = player_speed;
        check_inputs_all()
		
		break;
    }
    case "LEFT": {
		facing = 3;
        image_speed = anim_speed;
        sprite_walk = spr_player_side_left;
		sprite_attack = spr_player_attack_left;
        sprite_index = sprite_walk;
        vx = -1 * player_speed;
        vy = align_to_grid(y,4)
        check_inputs_all()
        break;
    }
    case "RIGHT": {
		facing = 1;
        image_speed = anim_speed;
        sprite_walk = spr_player_side_right;
		sprite_attack = spr_player_attack_right;
        sprite_index = sprite_walk;
        vx = player_speed;
        vy = align_to_grid(y,4);
        check_inputs_all()
        break;
    }
			
}

if (iframes > 0) {
	iframes --;
}

if ( abs( vy ) == 0) vx = (Input.right - Input.left) * player_speed;
if ( abs( vx ) == 0) vy = (Input.down - Input.up) * player_speed;


/// check colisão inimigo
mask_index = sprite_index;

var enemy = instance_place (x,y,obj_par_enemy);

if (enemy !=noone) {

	if (iframes == 0) {
	iframes = 30;
	hp -= enemy.damage;
	}

}


/// Colisões
check_collision_object(vx, vy, obj_solid);

mask_index = spr_player;

if (hp = 0){
	instance_destroy(obj_player);
	room_goto (rm_gameover);
}

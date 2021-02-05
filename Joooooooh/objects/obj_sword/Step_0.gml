if (timer <= 9) {
	if (timer > 7) {
		direction = (image_angle + 270) mod 360;
		speed = 4;
	}
	timer += 1;
} else {
	instance_destroy();	
}

depth = 5;
		
		
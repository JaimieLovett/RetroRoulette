flash = 5;
hp--;

if (hp <= 0) {
	instance_destroy();	
}

screenshake(30, 2, 0.3);
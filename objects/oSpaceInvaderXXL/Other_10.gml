flash = 5;
hp--;

if (hp <= 0) {
	instance_destroy();	
}

screenshake(30, 2, 0.3);

if alarm[2] == -1 alarm[2] = room_speed * 0.3;
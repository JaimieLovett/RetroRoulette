function win_condition_asteroids_1() {
	if (!instance_exists(oAsteroid)) {
		select_new_game = true;	
	}
}

function win_condition_asteroids_2() {
	if (alarm[0] == -1) alarm[0] = room_speed * global.timer;	
}

function win_condition_space_invaders_1() {
	if (!instance_exists(oSpaceInvader)) {
		select_new_game = true;	
	}
}

function win_condition_space_invaders_2() {
	if (alarm[0] == -1) alarm[0] = room_speed * global.timer;
}

function win_condition_pong_1() {
	if (oPongBall.x > room_width) {
		select_new_game = true;	
	}
}

function win_condition_pong_2() {
	if (alarm[0] == -1) alarm[0] = room_speed * global.timer;
	
	// Spawn pong balls
	if (alarm[1] == -1) alarm[1] = room_speed * 1;
}
if (room == rGame) {
	instance_deactivate_layer("GameOverFilter");	
}

if (room == rGameOver) {
	global.game_over = false;
	global.slow_mo = false;
	room_speed = round(60*1);
}
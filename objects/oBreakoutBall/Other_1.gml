if (bbox_left < 0 || bbox_right > room_width) {
	x = clamp(x, 0+sprite_xoffset, room_width-sprite_xoffset);
	h_speed *= -1;
}

if (bbox_top < 0) {
	y = clamp(y, 0+sprite_yoffset, room_height-sprite_yoffset);
	v_speed *= -1;
}

if (bbox_bottom > room_height && oGameMode.current_game == "breakout_survive") {
	gameover();	
}
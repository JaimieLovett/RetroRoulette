if (room == rGameOver) {
	draw_sprite(sLogoGameOver, 0, room_width/2, sprite_height/2 + 70);
	
	draw_set_font(fHUDDescription);
	draw_set_halign(fa_center);
	draw_set_alpha(1);
	var c = c_white;
	draw_text_color(room_width / 2, 170, "Asteroids destroyed: " + string(global.destroyed_asteroids), c, c, c, c, 1);
	draw_text_color(room_width / 2, 200, "Bricks destroyed: " + string(global.destroyed_breakout), c, c, c, c, 1);
	draw_text_color(room_width / 2, 230, "Bullets fired: " + string(global.bullets_fired), c, c, c, c, 1);
	draw_text_color(room_width / 2, 260, "Goals defended: " + string(global.goals_defended), c, c, c, c, 1);
	draw_text_color(room_width / 2, 290, "Goals scored: " + string(global.goals_scored), c, c, c, c, 1);
	draw_text_color(room_width / 2, 320, "Space Invaders destroyed: " + string(global.destroyed_space_invaders), c, c, c, c, 1);
	draw_text_color(room_width / 2, 350, "Space Invaders XXL destroyed: " + string(global.destroyed_space_invaders_xxl), c, c, c, c, 1);
	
	draw_set_font(fPlay);
	draw_set_halign(fa_center);
	var play_again_text_c = c_lime;
	draw_text_color(room_width / 2, 420, "Press ENTER to play again...", play_again_text_c, play_again_text_c, play_again_text_c, play_again_text_c, 1);
}
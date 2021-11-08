if (room == rGameOver) {
	draw_set_alpha(1);
	var c = c_white;
	draw_set_halign(fa_center);
	draw_set_font(fHUDTitle);
	draw_text_color(room_width / 2, 20, "GAMEOVER", c, c, c, c, 1);
	
	draw_set_font(fHUDDescription);
	draw_text_color(room_width / 2, 100, "Asteroids destroyed: " + string(global.destroyed_asteroids), c, c, c, c, 1);
	draw_text_color(room_width / 2, 130, "Bricks destroyed: " + string(global.destroyed_breakout), c, c, c, c, 1);
	draw_text_color(room_width / 2, 160, "Goals defended: " + string(global.goals_defended), c, c, c, c, 1);
	draw_text_color(room_width / 2, 190, "Goals scored: " + string(global.goals_scored), c, c, c, c, 1);
	draw_text_color(room_width / 2, 220, "Space Invaders destroyed: " + string(global.destroyed_space_invaders), c, c, c, c, 1);
	draw_text_color(room_width / 2, 250, "Space Invaders XXL destroyed: " + string(global.destroyed_space_invaders_xxl), c, c, c, c, 1);
}
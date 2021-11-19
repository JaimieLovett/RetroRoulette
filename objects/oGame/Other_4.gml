if (room == rGameOver) {
	global.game_over = false;
	audio_stop_sound(sndGameMusic);
}
else if (room == rGame) {
	if (!audio_is_playing(sndGameMusic)) audio_play_sound(sndGameMusic, 0, false);
}
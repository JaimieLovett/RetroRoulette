if (can_collide) {
	var _sound = sndBallBounce;
	audio_stop_sound(_sound);
	audio_sound_pitch(_sound, random_range(0.8, 1.2));
	audio_play_sound(_sound, 0, false);
	
	can_collide = false;
	if (alarm[1] == -1) alarm[1] = room_speed * 0.1;did_collide = true;

	// Make the ball change sprites
	image_index = 4;

	if (bbox_bottom > room_height - other.sprite_width || bbox_top < 0 + other.sprite_width) {
		y = clamp(y, 0+sprite_yoffset, room_height-sprite_yoffset);
		v_speed *= -1;
	}

	// Spawn smoke particle effect
	var _xx = x;
	var _yy = y;
	with (oParticles) {
		part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
	}
}
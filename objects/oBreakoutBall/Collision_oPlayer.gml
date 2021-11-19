can_collide = true;
var _sound = sndBallBounce;
audio_stop_sound(_sound);
audio_sound_pitch(_sound, random_range(0.8, 1.2));
audio_play_sound(_sound, 0, false);

did_collide = true;

// Make the ball change sprites
image_index = 1;

// Choose a random horizontal and vertical speed.
h_speed = random_range(-10, 10);
v_speed = random_range(-10, -8);

// Multiply our speed if we're not above max speed
if (v_speed < max_speed) v_speed *= random_range(1.0, 1.5);
if (h_speed < max_speed) h_speed *= random_range(1.0, 1.5);

screenshake(30, 3, 0.2);

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
	part_particles_create(part_system, _xx, _yy, part_type_confetti, 16);	
	part_particles_create(part_system, _xx, _yy, part_type_more_confetti, 16);
}
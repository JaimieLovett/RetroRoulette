image_speed = 0;
image_index = 0;
if alarm[0] == -1 alarm[0] = 1;
speed = 10;
var _xx = x;
var _yy = y;

// Spawn smoke particle effect
var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
}

global.bullets_fired = global.bullets_fired + 1;

var _sound = sndShoot;
audio_stop_sound(_sound);
audio_play_sound(_sound, 0, false);
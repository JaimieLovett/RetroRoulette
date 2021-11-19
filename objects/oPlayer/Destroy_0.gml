var _xx = x;
var _yy = y;

with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_player_debris, 100);	
}

var _sound = sndShipExplosion;
audio_play_sound(_sound, 0, false);
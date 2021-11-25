global.destroyed_asteroids++;
var _sound = sndAsteroidExplosion;
audio_play_sound(_sound, 0, false);

screen_freeze(global.screen_freeze_duration);

var _xx = x;
var _yy = y;

var _num_to_spawn = 2
if global.current_game == "asteroids_survive" _num_to_spawn = random_range(6, 10)

if sprite_index == sAsteroidLarge {
	with (oParticles) {
		part_particles_create(part_system, _xx, _yy, part_type_asteroid_debris, 100);	
	}
	
	repeat(_num_to_spawn) {
		var new_asteroid = instance_create_layer(x, y, "Enemies", oAsteroid);
		new_asteroid.sprite_index = sAsteroidMedium;
	}
	
	screenshake(30, 4, 0.2);
}
else if sprite_index == sAsteroidMedium {
	with (oParticles) {
		part_particles_create(part_system, _xx, _yy, part_type_asteroid_debris, 80);	
	}
	
	repeat(_num_to_spawn) {
		var new_asteroid = instance_create_layer(x, y, "Enemies", oAsteroid);
		new_asteroid.sprite_index = sAsteroidSmall;
	}
	
	screenshake(30, 2, 0.3);
}
else {
	with (oParticles) {
		part_particles_create(part_system, _xx, _yy, part_type_asteroid_debris, 60);	
	}
	
	screenshake(30, 1, 0.4);
}

instance_destroy();
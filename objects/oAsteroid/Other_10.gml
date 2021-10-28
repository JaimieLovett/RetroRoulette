screen_freeze(global.screen_freeze_duration);

var _xx = x;
var _yy = y;

if sprite_index == sAsteroidLarge {
	with (oParticles) {
		part_particles_create(part_system, _xx, _yy, part_type_asteroid_debris, 100);	
	}
	
	repeat(2) {
		var new_asteroid = instance_create_layer(x, y, "Enemies", oAsteroid);
		new_asteroid.sprite_index = sAsteroidMedium;
	}
	
	screenshake(30, 4, 0.2);
}
else if sprite_index == sAsteroidMedium {
	with (oParticles) {
		part_particles_create(part_system, _xx, _yy, part_type_asteroid_debris, 80);	
	}
	
	repeat(2) {
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
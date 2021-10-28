did_collide = true;
screen_freeze(global.screen_freeze_duration);

// Make the ball change sprites
image_index = 4;

h_speed = random_range(-10, -8);
v_speed = choose(-5, 5);

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
}

screenshake(30, 3, 0.2);
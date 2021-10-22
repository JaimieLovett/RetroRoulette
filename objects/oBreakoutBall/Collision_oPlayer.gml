did_collide = true;

// Make the ball change sprites
image_index = 1;

// Choose a random horizontal and vertical speed.
h_speed = choose(random_range(-10, -8), random_range(8, 10));
v_speed = random_range(-10, -8);

// Multiply our speed if we're not above max speed
if (v_speed < max_speed) v_speed *= random_range(1.0, 1.5);
if (h_speed < max_speed) h_speed *= random_range(1.0, 1.5);

screenshake(30, 3, 0.2);

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
}
h_speed = clamp(-h_speed * 1.2, -10, 10);
v_speed = choose(-5, 5);

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_pong_paddle_debris, 100);
}
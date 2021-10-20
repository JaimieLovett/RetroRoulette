instance_destroy();

with(other) {
	instance_destroy();	
}

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_bullet_debris, 30);
}
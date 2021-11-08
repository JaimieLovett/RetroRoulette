instance_destroy();

// Destroy the asteroid. But we don't want to call it's destroy event.
// Because if we put the splitting of Asteroids in the destroy event,
// it means every time we switch game modes and do a cleanup, the Asteroids
// will also split.
with (other) event_perform(ev_other, ev_user0);

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_bullet_debris, 30);
}

global.destroyed_asteroids++;
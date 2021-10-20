did_collide = true;

// Make the ball change sprites
image_index = 4;

h_speed = random_range(10, 15);
v_speed = choose(-5, 5);

if (oGameMode.current_game = "pong_goalkeeper" && alarm[0] == -1) {
	alarm[0] = room_speed * 0.5;
}

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
}

screenshake(30, 3, 0.2);
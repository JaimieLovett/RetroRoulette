can_collide = true;
did_collide = true;
screen_freeze(global.screen_freeze_duration);

// Make the ball change sprites
image_index = 4;

h_speed = random_range(10, 15);
v_speed = choose(-5, 5);

if (global.current_game = "pong_goalkeeper" && alarm[0] == -1) {
	alarm[0] = room_speed * 0.5;
	global.goals_defended++;
}

var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
	part_particles_create(part_system, _xx, _yy, part_type_confetti, 16);	
	part_particles_create(part_system, _xx, _yy, part_type_more_confetti, 16);
}

screenshake(30, 3, 0.2);
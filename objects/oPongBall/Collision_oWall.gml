if (bbox_bottom > room_height - other.sprite_width || bbox_top < 0 + other.sprite_width) {
	y = clamp(y, 0+sprite_yoffset, room_height-sprite_yoffset);
	v_speed *= -1;
}

other.image_index = 1;
if other.alarm[0] == -1 other.alarm[0] = room_speed * 0.1;

// Spawn smoke particle effect
var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
}
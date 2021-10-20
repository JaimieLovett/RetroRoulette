if (bbox_left < 0 + other.sprite_width || bbox_right > room_width - other.sprite_width) {
	x = clamp(x, 0+sprite_xoffset, room_width-sprite_xoffset);
	h_speed *= -1;
}

if (bbox_top < other.sprite_width) {
	y = clamp(y, 0+sprite_yoffset, room_height-sprite_yoffset);
	v_speed *= -1;
}

other.image_index = 1;
if other.alarm[0] == -1 other.alarm[0] = room_speed * 0.1;
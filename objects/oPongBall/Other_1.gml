if (bbox_bottom > room_height || bbox_top < 0) {
	y = clamp(y, 0+sprite_yoffset, room_height-sprite_yoffset);
	v_speed *= -1;
}
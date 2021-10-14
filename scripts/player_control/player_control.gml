function player_control_asteroids() {
	if (key_left) image_angle = image_angle + 5;
	if (key_right) image_angle = image_angle - 5;	
	if (key_up) {
		motion_add(image_angle, acceleration);
		if speed > max_speed speed = max_speed;
	}
	else {
		if speed >= 0 speed -= deceleration;
	}
	
	if (key_space && can_shoot) {	
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		var _inst = instance_create_layer(x, y, "Instances", oBullet);
		_inst.direction = image_angle;
	}
	
	// Wrap to the other side of the screen if we move off the screen.
	move_wrap(true,true,sprite_width / 2);
}

function player_control_space_invaders() {
	input_direction = point_direction(0, 0, key_right - key_left, 0);
	input_magnitude = (key_right - key_left != 0);
	h_speed = lengthdir_x(input_magnitude * velocity, input_direction);
	x += h_speed;
	x = clamp(x, 0 + (sprite_width/2), camera_get_view_width(view_camera[0]) - (sprite_width/2));
	
	if (key_space && can_shoot) {
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		var _inst = instance_create_layer(x, y, "Instances", oBullet);
		_inst.direction = 90;
		_inst.speed = 12;
	}
}
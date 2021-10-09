// Handle input
if keyboard_check(vk_left) image_angle = image_angle + rotate_speed;
if keyboard_check(vk_right) image_angle = image_angle - rotate_speed;

if keyboard_check(vk_up) {
	motion_add(image_angle, acceleration);	
	if speed > max_speed speed = max_speed;
}
else {
	if speed >= 0 speed -= deceleration;	
}

if keyboard_check(vk_space) {
	if can_shoot {
		var _bullet = instance_create_layer(x, y, "Instances", oBullet);
		_bullet.direction = image_angle;
		
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
	}
}

// Wrap to the other side of the screen if we move off the screen.
move_wrap(true,true,sprite_width / 2);
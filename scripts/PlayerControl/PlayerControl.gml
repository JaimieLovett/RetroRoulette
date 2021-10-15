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
		if (global.game_type == "destroy") {
			var _sep = 7;
            var _bullet_angle;
            var i = 0;
            
            repeat(8){
				_bullet_angle = direction + (i * 45);
                var _inst = instance_create_layer(
					x + lengthdir_x(_sep,_bullet_angle),
					y + lengthdir_y(_sep,_bullet_angle),
					"Bullets",
					oBullet,
				);
                _inst.direction = _bullet_angle;
                i++;
            }	
		}
		else {
			var _inst = instance_create_layer(x, y, "Bullets", oBullet);
			_inst.direction = image_angle;
		}
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

function player_control_pong() {
	input_direction = point_direction(0, 0, 0, key_down - key_up);
	input_magnitude = (key_down - key_up != 0);
	v_speed = lengthdir_y(input_magnitude * velocity, input_direction);
	y += v_speed;
	y = clamp(y, 0 + (sprite_height/2), camera_get_view_height(view_camera[0]) - (sprite_height/2));
	
}
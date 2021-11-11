function player_control_asteroids() {
	if (key_left) image_angle = image_angle + 5;
	if (key_right) image_angle = image_angle - 5;	
	if (key_up) {
		motion_add(image_angle, acceleration);
		if speed > max_speed speed = max_speed;
		
		// Particle FX.
		exhaust_counter++;
	
		if (exhaust_counter >= 4) {
			exhaust_counter = 0;
			var len = sprite_height * .4;
			var _xx = x - lengthdir_x(len, image_angle);
			var _yy = y - lengthdir_y(len, image_angle);
		
			with (oParticles) {
				part_particles_create(part_system, _xx, _yy, part_type_exhaust, 1);
			}
		}
	}
	else {
		if speed >= 0 speed -= deceleration;
	}
	
	if (key_space && can_shoot) {
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		if (global.current_game == "asteroids_destroy") {
			var _sep = (oPlayer.sprite_height/2) + 10;
            var _bullet_angle;
            var i = 0;
            
            repeat(8){
				_bullet_angle = oPlayer.direction + (i * 45);
                var _inst = instance_create_layer(
					x + lengthdir_x(_sep, _bullet_angle),
					y + lengthdir_y(_sep, _bullet_angle),
					"Bullets",
					oBullet,
				);
                _inst.direction = _bullet_angle;
                i++;
            }
			screenshake(30, 3, 0.4);
		}
		else {
			var _sep = (sprite_height/2) + 10;
			var _inst = instance_create_layer(x + lengthdir_x(_sep, image_angle), y + lengthdir_y(_sep, image_angle), "Bullets", oBullet);
			_inst.direction = image_angle;
			screenshake(30, 1, 0.4);
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
		var _sep = (sprite_height/2) + 20;
        var _bullet_angle;
        var i = 10;
        
        repeat(5){
			_bullet_angle = 60 + i;
            var _inst = instance_create_layer(
				x + lengthdir_x(_sep, _bullet_angle),
				y + lengthdir_y(_sep, _bullet_angle),
				"Bullets",
				oBullet,
			);
            _inst.direction = _bullet_angle;
			_inst.speed = 12;
			i += 10;
        }
		screenshake(30, 3, 0.4);
	}
}

function player_control_pong() {
	input_direction = point_direction(0, 0, 0, key_down - key_up);
	input_magnitude = (key_down - key_up != 0);
	v_speed = lengthdir_y(input_magnitude * velocity, input_direction);
	y += v_speed;
	y = clamp(y, 0 + (sprite_height/2) + (oWall.sprite_width/2), camera_get_view_height(view_camera[0]) - (sprite_height/2) - (oWall.sprite_width/2));
}

function player_control_breakout_survive() {
	input_direction = point_direction(0, 0, key_right - key_left, 0);
	input_magnitude = (key_right - key_left != 0);
	h_speed = lengthdir_x(input_magnitude * velocity, input_direction);
	x += h_speed;
	x = clamp(x, 0 + (sprite_width/2) + (oWall.sprite_width/2), camera_get_view_width(view_camera[0]) - (sprite_width/2) - (oWall.sprite_width/2));
}

function player_control_breakout_destroy() {
	input_direction = point_direction(0, 0, key_right - key_left, 0);
	input_magnitude = (key_right - key_left != 0);
	hori_speed = lengthdir_x(input_magnitude * velocity, input_direction);
	x += hori_speed;
	x = clamp(x, 0 + (sprite_width/2) + (oWall.sprite_width/2), camera_get_view_width(view_camera[0]) - (sprite_width/2) - (oWall.sprite_width/2));
	shoot_delay = 0.2;
	
	if (key_space && can_shoot) {
		can_shoot = false;
		alarm[0] = room_speed * shoot_delay;
		instance_create_layer(x, y - 20, "Bullets", oBreakoutBall);
		screenshake(30, 1, 0.4);
	}
}
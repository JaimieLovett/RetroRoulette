#region Setup

function setup_asteroids(){
	with (oPlayer) {
		sprite_index = sPlayerAsteroids;
		x = room_width / 2;
		y = room_height / 2;
		speed = 0;
		image_angle = 0;
	}
	
	global.game_type = choose("destroy", "survive");
	if (global.game_type == "destroy") {
		global.timer = 10;
		win_condition_script = win_condition_asteroids_1;
		global.win_condition_string = "DESTROY";
		repeat(3) {
			var xx = choose(
				irandom_range(0, room_width*0.3),
				irandom_range(room_width*0.7, room_width),
			);
		
			var yy = choose(
				irandom_range(0, room_height*0.3),
				irandom_range(room_height*0.7, room_height),
			);
		
			instance_create_layer(xx, yy, "Enemies", oAsteroid);
		}
	}
	else if (global.game_type == "survive") {
		global.timer = 5;
		win_condition_script = win_condition_asteroids_2;
		global.win_condition_string = "SURVIVE";
		repeat(10) {
			var xx = choose(
				irandom_range(0, room_width*0.3),
				irandom_range(room_width*0.7, room_width),
			);
		
			var yy = choose(
				irandom_range(0, room_height*0.3),
				irandom_range(room_height*0.7, room_height),
			);
		
			instance_create_layer(xx, yy, "Enemies", oAsteroid);
		}
	}
}

function setup_space_invaders() {
	with (oPlayer) {
		sprite_index = sPlayerSpaceInvaders;
		x = room_width / 2;
		y = room_height - 20;
		speed = 0;
		image_angle = 0;
		velocity = 5;
		shoot_delay = 0.2;
	}
	global.game_type = choose("destroy", "survive");
	if (global.game_type == "destroy") {
		global.timer = 10;
		win_condition_script = win_condition_space_invaders_1;
		global.win_condition_string = "DESTROY";
		var _x = 25;
		var _sep = room_width / 12;
		repeat (11) {
			with (instance_create_layer(_x, 20, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader1;
				right = true;
			}
			_x += _sep;
		}
	
		_x = 25;
		repeat (11) {
			with (instance_create_layer(_x, 70, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader2;
				right = true;
			}
			_x += _sep;
		}
		
		_x = 25;
		repeat (11) {
			with (instance_create_layer(_x, 120, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader3;
				right = true;
			}
			_x += _sep;
		}
	}
	else if (global.game_type == "survive") {
		global.timer = 5;
		win_condition_script = win_condition_space_invaders_2;
		global.win_condition_string = "SURVIVE";
		var _x = 25;
		var _sep = room_width / 12;
		repeat (11) {
			with (instance_create_layer(_x, 20, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader1;
				right = true;
			}
			_x += _sep;
		}
	
		_x = 25;
		repeat (11) {
			with (instance_create_layer(_x, 70, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader2;
				right = true;
			}
			_x += _sep;
		}
	
		_x = 25;
		repeat (11) {
			with (instance_create_layer(_x, 120, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader2;
				right = true;
			}
			_x += _sep;
		}
	
		_x = 25;
		repeat (11) {
			with (instance_create_layer(_x, 170, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader3;
				right = true;
			}
			_x += _sep;
		}
	
		_x = 25;
		repeat (11) {
			with (instance_create_layer(_x, 220, "Enemies", oSpaceInvader)) {
				sprite_index = sSpaceInvader3;
				right = true;
			}
			_x += _sep;
		}
	}
}

function setup_pong() {	
	with (oPlayer) {
		sprite_index = sPlayerPong;
		x = 32;
		y = room_height / 2;
		speed = 0;
		image_angle = 0;
		velocity = 10;
		
	}
	
	
	global.game_type = choose("score", "goalkeeper");
	if (global.game_type == "score") {
		global.timer = 10;
		win_condition_script = win_condition_pong_1;
		global.win_condition_string = "SCORE";
		instance_create_layer(room_width - 32, room_height / 2, "Enemies", oPongPaddle);
		instance_create_layer(room_width / 2, room_height / 2, "Enemies", oPongBall);	
	}
	else if (global.game_type == "goalkeeper") {
		global.timer = 10;
		win_condition_script = win_condition_pong_2;
		global.win_condition_string = "GOALKEEPER";
	}
}

#endregion

#region Cleanup

function cleanup() {
	var _enemies = layer_get_all_elements("Enemies");
	for (var i = 0; i < array_length_1d(_enemies); i++) {
		if (layer_get_element_type(_enemies[i]) == layerelementtype_instance) {
			instance_destroy(layer_instance_get_instance(_enemies[i]))
		}
    }

	var _bullets = layer_get_all_elements("Bullets");
	for (var i = 0; i < array_length_1d(_bullets); i++) {
		if (layer_get_element_type(_bullets[i]) == layerelementtype_instance) {
			instance_destroy(layer_instance_get_instance(_bullets[i]))
		}
    }
}

#endregion

function pause() {
	
}
#region Setup

function setup_asteroids_destroy(){
	with (instance_create_layer(room_width / 2, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerAsteroids;	
		speed = 0;
		image_angle = 0;
	}
	
	repeat(irandom_range(6, 10)) {
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

function setup_asteroids_survive() {
	shoot_chance = 0.1;
	with (instance_create_layer(room_width / 2, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerAsteroids;	
		speed = 0;
		image_angle = 0;
	}
	
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

function setup_space_invaders_destroy() {
	with (instance_create_layer(room_width / 2, room_height - 20, "Instances", oPlayer)) {
		sprite_index = sPlayerSpaceInvaders;
		speed = 0;
		image_angle = 0;
		velocity = 5;
		shoot_delay = 0.2;
	}
	
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

function setup_space_invaders_survive() {
	with (instance_create_layer(room_width / 2, room_height - 20, "Instances", oPlayer)) {
		sprite_index = sPlayerSpaceInvaders;
		speed = 0;
		image_angle = 0;
		velocity = 5;
		shoot_delay = 0.2;
	}
	
	var _x = 25;
	var _sep = room_width / 12;
	
	var _move_delay = 0.1;
	var _x_move = 2;
	var _y_move = 20;


	repeat (11) {
		with (instance_create_layer(_x, 20, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader1;
			right = true;
			move_delay = _move_delay;
			x_move = _x_move;
			y_move = _y_move;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 70, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader2;
			right = true;
			move_delay = _move_delay;
			x_move = _x_move;
			y_move = _y_move;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 120, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader2;
			right = true;
			move_delay = _move_delay;
			x_move = _x_move;
			y_move = _y_move;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 170, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader3;
			right = true;
			move_delay = _move_delay;
			x_move = _x_move;
			y_move = _y_move;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 220, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader3;
			right = true;
			move_delay = _move_delay;
			x_move = _x_move;
			y_move = _y_move;
		}
		_x += _sep;
	}
}

function setup_pong_score() {
	with (instance_create_layer(32, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerPong;
		speed = 0;
		image_angle = 0;
		velocity = 10;
	}
	
	instance_create_layer(room_width - 32, room_height / 2, "Enemies", oPongPaddle);
	instance_create_layer(room_width - 60, room_height / 2, "Enemies", oPongBall);
	
	with (instance_create_layer(0, 0, "Enemies", oWall)) {
		image_angle = 90;
		x = 0 + (sprite_height / 2);
		y = 0 + sprite_width / 2;
	}
	
	with (instance_create_layer(0, 0, "Enemies", oWall)) {
		image_angle = 90;
		x = 0 + (sprite_height / 2);
		y = room_height - sprite_width / 2;
	}
}

function setup_pong_goalkeeper() {
	with (instance_create_layer(32, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerPongLong;
		speed = 0;
		image_angle = 0;
		velocity = 10;
	}
	
	with (instance_create_layer(0, 0, "Enemies", oWall)) {
		image_angle = 90;
		x = 0 + (sprite_height / 2);
		y = 0 + sprite_width / 2;
	}
	
	with (instance_create_layer(0, 0, "Enemies", oWall)) {
		image_angle = 90;
		x = 0 + (sprite_height / 2);
		y = room_height - sprite_width / 2;
	}
}

function setup_breakout_survive() {
	max_speed = 8;
	
	with (instance_create_layer((room_width/2) - (sprite_width/2), room_height - 32, "Instances", oPlayer)) {
		sprite_index = sPlayerBreakout;
		speed = 0;
		image_angle = 0;
		velocity = 10;
	}
	
	with (instance_create_layer(0, 0, "Enemies", oWall)) {
		x = 0 + (sprite_width/2);
		y = 0 + (sprite_height/2);
	}
	
	with (instance_create_layer(0, 0, "Enemies", oWall)) {
		x = room_width - (sprite_width/2);
		y = 0 + (sprite_height / 2);
	}
	
	with (instance_create_layer(0, 0, "Enemies", oWall)) {
		image_angle = 90;
		x = 0 + (sprite_height / 2);
		y = 0 + sprite_width / 2;
	}
	
	instance_create_layer((room_width/2) - (sprite_width/2), room_height/2, "Enemies", oBreakoutBall);	
	
	var _x = 100;
	
	repeat (13) {
		with (instance_create_layer(_x, 100, "Enemies", oBreakoutBrick)) {
			image_index = 0;
		}
		_x += 36;
	}
	
	_x = 100;
	repeat (13) {
		with (instance_create_layer(_x, 115, "Enemies", oBreakoutBrick)) {
			image_index = 1;
		}
		_x += 36;
	}
	
	_x = 100;
	repeat (13) {
		with (instance_create_layer(_x, 130, "Enemies", oBreakoutBrick)) {
			image_index = 2;
		}
		_x += 36;
	}
	
	_x = 100;
	repeat (13) {
		with (instance_create_layer(_x, 145, "Enemies", oBreakoutBrick)) {
			image_index = 3;
		}
		_x += 36;
	}
	
	_x = 100;
	repeat (13) {
		with (instance_create_layer(_x, 160, "Enemies", oBreakoutBrick)) {
			image_index = 4;
		}
		_x += 36;
	}
}

function setup_breakout_destroy() {
	setup_breakout_survive();	
}

#endregion
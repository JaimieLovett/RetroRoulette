// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_asteroids(){
	with (oPlayer) {
		sprite_index = sPlayerAsteroids;
		x = room_width / 2;
		y = room_height / 2;
	}
	
	repeat(6) {
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width),
		);
		
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height),
		);
		
		instance_create_layer(xx, yy, "Instances", oAsteroid);
	}
}

function setup_space_invaders() {
	with (oPlayer) {
		sprite_index = sPlayerSpaceInvaders;
		x = room_width / 2;
		y = room_height - 50;
		velocity = 5;
		shoot_delay = 0.3;
	}
}
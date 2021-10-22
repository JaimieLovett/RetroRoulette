if alarm[0] == -1 alarm[0] = room_speed * move_delay;

if (can_shoot) {
	can_shoot = false;
	alarm[1] = room_speed * shoot_delay;
	
	if (chance(shoot_chance)) {
		//var _num_bullets = choose(3, 5, 7);
		//var _angle_increment = 30;
		//var _choice = choose(0, 1);
		//var _start_angle = _choice ? 270 - (((_num_bullets - 1) / 2) * _angle_increment) : 270 + (((_num_bullets - 1) / 2) * _angle_increment);
		//var _i = 1;
		
		//repeat(_num_bullets) {
		//	var _inst = instance_create_layer(x, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
		//	_inst.direction = _choice ? _start_angle + _angle_increment * _i : _start_angle - _angle_increment * _i;
		//	_inst.speed = 2;
		//	_i++;
			
			
		//	switch(sprite_index) {
		//		case sSpaceInvader1XXL:
		//			_inst.sprite_index = sSpaceInvaderBullet1XXL;
		//			break;
					
		//		default: break;
		//	}
		//}
		var _inst = instance_create_layer(x, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
		_inst.direction = 270;
		_inst.speed = 8;
		
		switch(sprite_index) {
			case sSpaceInvader1XXL:
				_inst.sprite_index = sSpaceInvaderBullet1XXL;
				break;
					
			default: break;
		}
	}
}

if (flash) flash--;
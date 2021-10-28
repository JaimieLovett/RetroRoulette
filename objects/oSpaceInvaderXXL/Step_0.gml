if (!global.new_game_starting) {
	if alarm[0] == -1 alarm[0] = room_speed * move_delay;

	if (can_shoot) {
		can_shoot = false;
		alarm[1] = room_speed * shoot_delay;
	
		if (chance(shoot_chance)) {
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
}
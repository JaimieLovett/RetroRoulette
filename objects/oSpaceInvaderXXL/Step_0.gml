if (!global.new_game_starting) {
	if alarm[0] == -1 alarm[0] = room_speed * move_delay;

	if (can_shoot) {
		can_shoot = false;
		alarm[1] = room_speed * shoot_delay;
	
		if (chance(shoot_chance)) {
		
			switch(sprite_index) {
				case sSpaceInvader1XXL:
					var _inst = instance_create_layer(x, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
					_inst.direction = 270;
					_inst.speed = random_range(4, 10);
					_inst.sprite_index = sSpaceInvaderBullet1XXL;
					break;
					
				case sSpaceInvader2XXL:
					var _bullet_speed = random_range(2, 4);
					
					var _inst_1 = instance_create_layer(x - 50, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
					_inst_1.direction = 270;
					_inst_1.speed = _bullet_speed;
					_inst_1.sprite_index = sSpaceInvaderBullet2XXL;
					
					var _inst_2 = instance_create_layer(x + 50, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
					_inst_2.direction = 270;
					_inst_2.speed = _bullet_speed;
					_inst_2.sprite_index = sSpaceInvaderBullet2XXL;
					break;
				
				case sSpaceInvader3XXL:
					var _bullet_speed = random_range(2, 4);
					
					var _inst_1 = instance_create_layer(x - 50, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
					_inst_1.direction = 270;
					_inst_1.speed = _bullet_speed;
					_inst_1.sprite_index = sSpaceInvaderBullet3XXL;
					
					var _inst_2 = instance_create_layer(x, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
					_inst_2.direction = 270;
					_inst_2.speed = _bullet_speed;
					_inst_2.sprite_index = sSpaceInvaderBullet3XXL;
					
					var _inst_3 = instance_create_layer(x + 50, y + (sprite_height / 2), "Enemies", oSpaceInvaderBullet);
					_inst_3.direction = 270;
					_inst_3.speed = _bullet_speed;
					_inst_3.sprite_index = sSpaceInvaderBullet3XXL;
					break;
				
				default: break;
			}
		}
	}

	if (flash) flash--;
}
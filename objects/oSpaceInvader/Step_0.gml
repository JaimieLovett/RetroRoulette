if (!global.new_game_starting) {
	if alarm[0] == -1 alarm[0] = room_speed * move_delay;

	if (can_shoot) {
		can_shoot = false;
		
		alarm[1] = room_speed * shoot_delay;
	
		if (chance(shoot_chance)) {
			var _sound = sndEnemyShoot;
			audio_stop_sound(_sound);
			audio_play_sound(_sound, 0, false);
			
			var _inst = instance_create_layer(x, y, "Enemies", oSpaceInvaderBullet);
			_inst.direction = 270;
			_inst.speed = 3;
		
			switch(sprite_index) {
				case sSpaceInvader1:
					_inst.sprite_index = sSpaceInvaderBullet1;
					break;
				
				case sSpaceInvader2:
					_inst.sprite_index = sSpaceInvaderBullet2;
					break;
				
				case sSpaceInvader3:
					_inst.sprite_index = sSpaceInvaderBullet3;
					break;

				default: break;
			}
		}
	}

	if (flash) flash--;
}
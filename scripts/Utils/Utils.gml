function array_value_exists(array, value) {
	var _has_value = false;
	for (var i = 0; i < array_length(array); i++) {
		if (array[i] == value) {
			_has_value = true;
			break;
		}
	}
	return _has_value;
}

function chance(percent) {
  return percent > random(1);
}

function reset_stats() {
	global.destroyed_space_invaders = 0;
	global.destroyed_asteroids = 0;
	global.destroyed_breakout = 0;
	global.destroyed_space_invaders_xxl = 0;
	global.goals_scored = 0;
	global.goals_defended = 0;	
}
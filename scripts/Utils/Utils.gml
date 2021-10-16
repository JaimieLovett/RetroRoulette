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
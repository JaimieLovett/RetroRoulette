/// @desc Destroy Enemy Filters
filters = layer_get_all_elements("EnemyFilter");
for (var i = 0; i < array_length_1d(filters); i++) {
	if (layer_get_element_type(filters[i]) == layerelementtype_instance) {
        var layerelement = filters[i];
        var inst = layer_instance_get_instance(layerelement);
		instance_destroy(inst)
    }
}
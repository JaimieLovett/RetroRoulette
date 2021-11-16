if (global.filter_active) {
	saturation = lerp(saturation, 1, 0.05);
	distort = lerp(distort, 8, 0.08);
	distort_amount = lerp(distort_amount, 50, 0.5);

	fx_set_parameter(desaturate_fx, "g_Intensity", saturation);
	fx_set_parameter(distort_fx, "g_DistortScale", distort);
	fx_set_parameter(distort_fx, "g_DistortAmount", floor(distort_amount));
}
else {
	fx_set_parameter(desaturate_fx, "g_Intensity", 0.01);
	fx_set_parameter(distort_fx, "g_DistortScale", 0);
	fx_set_parameter(distort_fx, "g_DistortAmount", 0);		
}

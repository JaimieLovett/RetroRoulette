if (flash && shader_is_compiled(shFlash)) {
	shader_set(shFlash);
	draw_self();
	shader_reset();
}
else {
	draw_self();
}
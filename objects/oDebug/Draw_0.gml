var c = c_white;
draw_set_halign(fa_left);
draw_set_font(fDebug);
draw_text_color(20, 20, "HC: " + string(oPongPaddle.hit_counter), c, c, c, c, 1);
draw_text_color(20, 40, "CG: " + string(oPongPaddle.image_index), c, c, c, c, 1);
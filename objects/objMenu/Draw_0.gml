var i = 0;
repeat(buttons) {
	draw_set_font(fntGUI);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i;
	
	draw_set_color(c_dkgray);
	draw_rectangle(xx, yy, xx + button_w, yy + button_h, false);
	
	draw_set_color(c_silver);
	
	if (menuIndex == i) {
		draw_set_color(c_red);	
	}
	
	if (menuIndex != lastSelected) {
		//Play a sound here
	}
	
	draw_text(xx + (button_w / 2), yy + (button_h / 2), button[i]);
	i++;	
}
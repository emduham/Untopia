draw_set_font(fntGUI);
percentHP = (health * 100.0) / totalHealth;
draw_healthbar(10, 10, 210, 40, percentHP, c_black, c_red, c_green, 0, true, true);
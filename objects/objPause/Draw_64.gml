if(paused) {
	draw_sprite(screenShot, 0, 0, 0);
	draw_set_alpha(0.5);
	draw_set_color(c_gray);
	draw_rectangle(0, 0, 2000, 2000, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	tempX = camera_get_view_width(view_camera[0]) *1.5;
	tempY = camera_get_view_height(view_camera[0]) *1.5;
	draw_text_outlined(tempX, tempY, c_black, c_white, "Paused");
}
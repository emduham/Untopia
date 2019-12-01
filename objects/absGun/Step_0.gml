if (equipped) {
	x = objPlayer.x;
	y = objPlayer.y;
	
	gunAngle = (y - mouse_y) / (mouse_x - x);
	image_angle = 180 * arctan(gunAngle) / pi;
	if (mouse_x - x < 0) {
		image_angle += 180;
		image_yscale = -1;
	} else {
		//Reset the yscale
		image_yscale = 1;
	}
	if (mouse_y - y > 0) {
		depth = -2;
	} else {
		depth = 2;
	}
}
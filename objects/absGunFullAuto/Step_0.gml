x = objPlayer.x;
y = objPlayer.y;

gunAngle = (y - mouse_y) / (mouse_x - x);
image_angle = 180 * arctan(gunAngle) / pi;
if (mouse_x - x < 0) {
	image_angle += 180;
	image_yscale = -1;
} else {
	//Reset the yscale\
	image_yscale = 1;
}
if (mouse_y - y > 0) {
	depth = -2;
} else {
	depth = 2;
}

//Firing Mode - Semi Auto
//Handle Shooting
if (currentFireRate <= 0 && mouse_check_button(mb_left) && currentMag > 0 && !reloading) {
	var bullet;
	distScale = point_distance(x, y, mouse_x, mouse_y) / gunLength;
	bulletX = x + ((mouse_x - x) / distScale);
	bulletY = y + ((mouse_y - y) / distScale);
	bullet = instance_create_depth(bulletX, bulletY, 3, objBullet);
	with (bullet) {
		damage = 3;	//Fix this later
		projectileSpeed = 8;
		angleTan = (y - mouse_y) / (mouse_x - x);
		image_angle = 180 * arctan(angleTan) / pi;
		if (mouse_x - x < 0) {
			image_angle += 180;	
		}
		vSpeed = projectileSpeed * ((mouse_y - y) / point_distance(x, y, mouse_x, mouse_y));
		hSpeed = projectileSpeed * ((mouse_x - x) / point_distance(x, y, mouse_x, mouse_y));
	}
	currentFireRate = fireRate;
	currentMag--;
} else if (currentMag > 0) {
	currentFireRate--;
} else if (!reloading) {
	alarm[0] = reloadSpeed;
	reloading = true;
}

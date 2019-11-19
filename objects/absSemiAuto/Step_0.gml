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
if (currentFireRate <= 0 && mouse_check_button_pressed(mb_left) && currentMag > 0 && !reloading) {
	var bullet;
	distScale = point_distance(x, y, mouse_x, mouse_y) / gunLength;
	bulletX = x + ((mouse_x - x) / distScale);
	bulletY = y + ((mouse_y - y) / distScale);
	bullet = instance_create_depth(bulletX, bulletY, 3, objBullet);
	with (bullet) {
		damage = global.currentGunDamage;
		projectileSpeed = 8;
		deltaY = y - mouse_y;
		deltaX = mouse_x - x;
		oldAngle = 180 * arctan2(deltaY, deltaX) / pi;
		image_angle = oldAngle - (global.currentRecoil * 5) + (10 * random(1.0) * global.currentRecoil);
		
		vSpeed = projectileSpeed * (dcos(image_angle + 90));
		hSpeed = projectileSpeed * (dsin(image_angle + 90));
	}
	global.currentRecoil += global.stepRecoil;
	if (global.currentRecoil >= global.maxRecoil) {
		global.currentRecoil = global.maxRecoil;	
	}
	currentFireRate = fireRate;
	currentMag--;
	//Todo Recoil Cool Down
} else if (currentMag > 0) {
	currentFireRate--;
	
} else if (!reloading) {
	alarm[0] = reloadSpeed;
	reloading = true;
} 

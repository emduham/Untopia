if (activeSkillCooldown) {
	alarm[3] = skillCooldown;
	activeSkillCooldown = false;
	var wave;
	distScale = point_distance(x, y, mouse_x, mouse_y) / 16;
	bulletX = x + ((mouse_x - x) / distScale);
	bulletY = y + ((mouse_y - y) / distScale);
	wave = instance_create_depth(bulletX, bulletY, -500, objWave);
	with (wave) {
		projectileSpeed = 2;
		deltaY = objPlayer.y - mouse_y;
		deltaX = mouse_x - objPlayer.x;
		oldAngle = 180 * arctan2(deltaY, deltaX) / pi;
		image_angle = oldAngle - (global.currentRecoil) + (2 * random(1.0) * global.currentRecoil);
		
		vSpeed = projectileSpeed * (dcos(image_angle + 90));
		hSpeed = projectileSpeed * (dsin(image_angle + 90));
		
		image_xscale = 0.2;
		image_yscale = image_xscale;
	}
}
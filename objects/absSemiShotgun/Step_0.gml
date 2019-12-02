if (global.characterChoice != "toad" || objToad.activeSkillCooldown) {
	if (equipped) {
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
	}

	//Firing Mode - Semi Auto
	//Handle Shooting
	if (currentFireRate <= 0 && mouse_check_button_pressed(mb_left) && currentMag > 0 && !reloading && equipped) {
		var bullet;
		distScale = point_distance(x, y, mouse_x, mouse_y) / gunLength;
		bulletX = x + ((mouse_x - x) / distScale);
		bulletY = y + ((mouse_y - y) / distScale);
		var i;
		for (i = 0; i < pelletCount; i++) {
			bullet = instance_create_depth(bulletX, bulletY, 3, objBullet);
			with (bullet) {
				damage = global.currentGunDamage;
				projectileSpeed = global.bulletSpeed - 2 + random(4.0);
				deltaY = objPlayer.y - mouse_y;
				deltaX = mouse_x - objPlayer.x;
				oldAngle = 180 * arctan2(deltaY, deltaX) / pi;
				image_angle = oldAngle - global.pelletSpread - global.currentRecoil + (2 * (random(1.0) * (global.currentRecoil + global.pelletSpread)));
		
				vSpeed = projectileSpeed * (dcos(image_angle + 90));
				hSpeed = projectileSpeed * (dsin(image_angle + 90));
			}
		}
		global.currentRecoil += global.stepRecoil;
		if (global.currentRecoil >= global.maxRecoil) {
			global.currentRecoil = global.maxRecoil;	
		}
		currentFireRate = fireRate;
		currentMag--;
		alarm[1] = 30;		//Alarm sets the gun to start cooling down.
		recoilCooldown = false;
		audio_play_sound(sndBullet, 0, false);
	} else if (currentMag > 0  && equipped) {
		currentFireRate--;
	
	} else if (!reloading  && equipped) {
		if (global.characterChoice == "cell") {
			alarm[0] = reloadSpeed / 2;
		} else {
			alarm[0] = reloadSpeed;
		}
		reloading = true;
	} 

	if (recoilCooldown && global.currentRecoil > 0  && equipped) {
		global.currentRecoil--;
	}
}
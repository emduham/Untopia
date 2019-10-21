/// @description Insert description here
// You can write your code in this editor

if (health <= 0) {
	instance_destroy(id, true);
}

//Todo running along walls while holding diagonal buttons

//Movement
if (keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
	if (keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
		//Moving Up and Left
		if (!place_meeting((x - moveSpeed), y, objWall)) {
			x -= moveSpeed * 0.7;
		} 
		if (!place_meeting(x, (y - moveSpeed), objWall)) {
			y -= moveSpeed * 0.7;
		}
	} else if (keyboard_check(ord("S"))) {
		//Moving Down and Left
		if (!place_meeting((x - moveSpeed), y, objWall)) {
			x -= moveSpeed * 0.7;
		}
		if (!place_meeting(x, (y + moveSpeed), objWall)) {
			y += moveSpeed * 0.7;
		}
	} else {
		//Move Left
		if (!place_meeting((x - moveSpeed), y, objWall)) {
			x -= moveSpeed;
		}
	}		
} else if (keyboard_check(ord("D"))) {
	if (keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
		//Moving Up and Right
		if (!place_meeting((x + moveSpeed), y, objWall)) {
			x += moveSpeed * 0.7;
		}
		if (!place_meeting(x,  (y - moveSpeed), objWall)) {
			y -= moveSpeed * 0.7;
		}
	} else if (keyboard_check(ord("S"))) {
		//Moving Down and Right
		if (!place_meeting((x + moveSpeed), y, objWall)) {
			x += moveSpeed * 0.7;
		}
		if (!place_meeting(x, (y + moveSpeed), objWall)) {
			y += moveSpeed * 0.7;
		}
	} else {
		//Move Right
		if (!place_meeting((x + moveSpeed), y, objWall)) {
			x += moveSpeed;
		}
	}
} else if (keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
	//Move Up
	if (!place_meeting(x, (y - moveSpeed), objWall)) {
		y -= moveSpeed;
	}
} else if (keyboard_check(ord("S"))) {
	//Move Down
	if (!place_meeting(x, (y + moveSpeed), objWall)) {
		y += moveSpeed;
	}
}

//Handle Shooting
if (currentFireRate <= 0 && mouse_check_button(mb_left) && ammo > 0) {
	var bullet;
	bullet = instance_create_depth(x, y, 1, objBullet);
	with (bullet) {
		projectileSpeed = 4;
		angleTan = (y - mouse_y) / (mouse_x - x);
		image_angle = 180 * arctan(angleTan) / pi;
		if (mouse_x - x < 0) {
			image_angle += 180;	
		}
		vSpeed = projectileSpeed * ((mouse_y - y) / point_distance(x, y, mouse_x, mouse_y));
		hSpeed = projectileSpeed * ((mouse_x - x) / point_distance(x, y, mouse_x, mouse_y));
	}
	currentFireRate = fireRate;
	ammo--;
} else {
	currentFireRate--;
}

if (iframes > 0) {
	iframes--;
}
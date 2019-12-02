/// Line of sight
canSeePlayer = !collision_line(x, y, objPlayer.x, objPlayer.y, objWall, false, false) && !collision_line(x, y, objPlayer.x, objPlayer.y, objLiquid, false, false);;
if (currentFireRate <= 0) {
	if (canSeePlayer) {
		var i;
		for (i = 0; i < 3; i++) {
			var bullet;
			bullet = instance_create_depth(x, y, 1, objEnemyBullet);
			with (bullet) {
				projectileSpeed = 4;
				angleTan = (y - objPlayer.y) / (objPlayer.x - x);
				image_angle = 180 * arctan(angleTan) / pi;
				image_angle = image_angle - 16 + (15 * i);
				facingLeft = false;
				if (objPlayer.x - x < 0) {
					image_angle += 180;	
					facingLeft = true;
				}
				vSpeed = projectileSpeed * (dcos(image_angle + 90));
				hSpeed = projectileSpeed * (dsin(image_angle + 90));
			}
		}
		currentFireRate = random_range(minFireRate, minFireRate * 3);
	}
} else {
	currentFireRate--;
}

//DirectionCheck

if (facingLeft) {
	image_xscale = -1;	
} else {
	image_xscale = 1;
}
/// @description Insert description here
// You can write your code in this editor

// Line of sight
canSeePlayer = !collision_line(x, y, objPlayer.x, objPlayer.y, objWall, false, false);
if (currentFireRate <= 0) {
	if (canSeePlayer) {
		var bullet;
		bullet = instance_create_depth(x, y, 1, objEnemyBullet);
		with (bullet) {
			projectileSpeed = 4;
			angleTan = (y - objPlayer.y) / (objPlayer.x - x);
			image_angle = 180 * arctan(angleTan) / pi;
			if (objPlayer.x - x < 0) {
				image_angle += 180;	
			}
			vSpeed = projectileSpeed * ((objPlayer.y - y) / point_distance(x, y, objPlayer.x, objPlayer.y));
			hSpeed = projectileSpeed * ((objPlayer.x - x) / point_distance(x, y, objPlayer.x, objPlayer.y));
		}
		currentFireRate = random_range(minFireRate, minFireRate * 3);
	}
} else {
	currentFireRate--;
}
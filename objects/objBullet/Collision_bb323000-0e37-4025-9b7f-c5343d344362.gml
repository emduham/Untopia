if (moving) {
	instance_destroy(id, false);
}

instance_create_depth(x + hSpeed, y + vSpeed, 3, objBulletExplode);
if (activeSkillCooldown) {
	alarm[3] = skillCooldown;
	activeSkillCooldown = false;
	if(instance_number(objRockWall) > 0) {
		instance_destroy(objRockWall, false);
	}
	var rockwall;
	distScale = point_distance(x, y, mouse_x, mouse_y) / 48;
	bulletX = x + ((mouse_x - x) / distScale);
	bulletY = y + ((mouse_y - y) / distScale);
	rockwall = instance_create_depth(bulletX, bulletY, -4, objRockWall);
}
if (keyboard_check_pressed(ord("E")) && !looted) {
	looted = true;
	sprite_index = sprOpenChest;
	if (room_get_name(room) == "SavannahLevel") {
		chance = random(3.0);
		if (chance < 1.0) {
			instance_create_depth(x, y + 16, -1, objTrident);
		} else if (chance < 2.0) {
			instance_create_depth(x, y + 16, -1, objRevolver);	
		} else {
			instance_create_depth(x, y + 16, -1, objBabyDragon);	
		}
	}
}
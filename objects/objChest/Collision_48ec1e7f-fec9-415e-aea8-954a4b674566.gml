if (keyboard_check_pressed(ord("E")) && !looted) {
	looted = true;
	sprite_index = sprOpenChest;
	if (room_get_name(room) == "RmIceCaves") {
		instance_create_depth(x, y + 16, -1, objShotgun);
	}
}
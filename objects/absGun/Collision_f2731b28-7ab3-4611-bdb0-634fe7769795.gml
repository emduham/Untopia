if (keyboard_check_pressed(ord("E")) && !global.gunEquipped) {
	equipped = true;
	persistent = true;
	global.gunEquipped = true;
}
menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menuIndex += menuMove;
if (menuIndex < 0) {
	menuIndex = buttons - 1;	
} else if (menuIndex > buttons - 1) {
	menuIndex = 0;
}
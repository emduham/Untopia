menuMove = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
menuIndex += menuMove;
if (menuIndex < 0) {
	menuIndex = buttons - 1;	
} else if (menuIndex > buttons - 1) {
	menuIndex = 0;
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))) {
	switch(menuIndex) {
		case 0:
			global.characterChoice = "cell";
			room_goto_next();
			break;
		case 1:
			global.characterChoice = "merlin";
			room_goto_next();
			break;
		case 2:
			global.characterChoice = "toad";
			room_goto_next();
			break;
		case 3:
			global.characterChoice = "duane";
			room_goto_next();
			break;
		case 4:
			game_end();
			break;
	}
}

if (cellIndex < cellFrames) {
	cellIndex += cellSpeed;
} else {
	cellIndex = 0;
}

if (merlinIndex < merlinFrames) {
	merlinIndex += merlinSpeed;
} else {
	merlinIndex = 0;
}

if (toadIndex < toadFrames) {
	toadIndex += toadSpeed;
} else {
	toadIndex = 0;
}

if (duaneIndex < duaneFrames) {
	duaneIndex += duaneSpeed;
} else {
	duaneIndex = 0;
}
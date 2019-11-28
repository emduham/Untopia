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
global.currentRecoil = 0;
global.gunEquipped = false;

menu_x = x;
menu_y = y;
button_h = 32;
button_w = 384;
button_padding = 16;

//Character choices
button[0] = "Play as: Cell";
button[1] = "Play as: Merlin";
button[2] = "Play as: Toad";
button[3] = "Play as: Duane";
button[4] = "Exit";
buttons = array_length_1d(button);

menuIndex = 0;
lastSelected = 0;
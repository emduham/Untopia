choice = random(3.0);

if (choice < 1.0) {
	sprite_index = sprLargeSmoke;	
} else if (choice < 2.0) {
	sprite_index = sprCinders;	
} else {
	sprite_index = sprSmallSmoke;	
}

alarm[0] = 45;

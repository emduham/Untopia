if (global.characterChoice == "cell") {
	instance_create_depth(x, y, 0, objCell);
} else if (global.characterChoice == "merlin") {
	instance_create_depth(x, y, 0, objMerlin);
} else if (global.characterChoice == "toad") {
	instance_create_depth(x, y, 0, objToad);
} else if (global.characterChoice == "duane") {
	instance_create_depth(x, y, 0, objDuane);
}
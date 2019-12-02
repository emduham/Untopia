if (rockHealth == 100) {
	image_index = 0;
} else if (rockHealth >= 75) {
	image_index = 1;
} else if (rockHealth >= 50) {
	image_index = 2;
} else if (rockHealth >= 25) {
	image_index = 3;
} else if (rockHealth <= 0) {
	instance_destroy(id, false);
}
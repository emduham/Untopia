randomize();

speed = 1.0;
direction = choose(0, 45, 90, 135, 180, 225, 270, 315);
alarm[0] = random_range(5, 30);
facingLeft = false;
if (direction == 135 || direction == 180 || direction == 225) {
	facingLeft = true;	
}

minFireRate = 40.0;
currentFireRate = random_range(minFireRate, minFireRate * 3);

hp = 12;
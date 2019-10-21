/// @description Insert description here
// You can write your code in this editor

direction = choose(0, 45, 90, 135, 180, 225, 270, 315);
alarm[0] = random_range(5, 30);

if (direction == 135 || direction == 180 || direction == 225) {
	facingLeft = true;	
} else if (direction == 315 || direction == 0 || direction == 45) {
	facingLeft = false;	
}
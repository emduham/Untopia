if (health <= 0) {
	instance_destroy(id, true);
}

isMoving = 0;

//Movement
if (keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
	if (keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
		//Moving Up and Left
		if (place_free((x - moveSpeed), y)) {
			x -= moveSpeed;
		} 
		if (place_free(x, (y - moveSpeed))) {
			y -= moveSpeed;
		}
	} else if (keyboard_check(ord("S"))) {
		//Moving Down and Left
		if (place_free((x - moveSpeed), y)) {
			x -= moveSpeed;
		}
		if (place_free(x, (y + moveSpeed))) {
			y += moveSpeed;
		}
	} else {
		//Move Left
		if (place_free((x - moveSpeed), y)) {
			x -= moveSpeed;
		}
	}	
	isMoving = 1;
} else if (keyboard_check(ord("D"))) {
	if (keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
		//Moving Up and Right
		if (place_free((x + moveSpeed), y)) {
			x += moveSpeed;
		}
		if (place_free(x,  (y - moveSpeed))) {
			y -= moveSpeed;
		}
	} else if (keyboard_check(ord("S"))) {
		//Moving Down and Right
		if (place_free((x + moveSpeed), y)) {
			x += moveSpeed;
		}
		if (place_free(x, (y + moveSpeed))) {
			y += moveSpeed;
		}
	} else {
		//Move Right
		if (place_free((x + moveSpeed), y)) {
			x += moveSpeed;
		}
	}
	isMoving = 1;
} else if (keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
	//Move Up
	if (place_free(x, (y - moveSpeed))) {
		y -= moveSpeed;
	}
	isMoving = 1;
} else if (keyboard_check(ord("S"))) {
	//Move Down
	if (place_free(x, (y + moveSpeed))) {
		y += moveSpeed;
	}
	isMoving = 1;
}

//Animation handling
if (isMoving = 1) {
	sprite_index = walkingSprite;
} else {
	sprite_index = idleSprite;
}

if (mouse_x - x < 0) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}

if (iframes > 0) {
	iframes--;
}
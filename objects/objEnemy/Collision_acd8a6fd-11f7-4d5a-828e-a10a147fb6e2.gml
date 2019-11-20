hp -= other.damage;
if (hp <= 0) {
	instance_destroy(id, false);
}

//draw_text_outlined((x - 8 + random(16)), (y + 8 + random(8)), c_black, c_white, "yeet");
//This isn't working, fix later maybe

instance_destroy(other.id, false);
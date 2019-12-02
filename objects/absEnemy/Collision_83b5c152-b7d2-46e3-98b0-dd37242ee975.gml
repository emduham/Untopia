if (other.reflected) {
	hp -= 6;
	if (hp <= 0) {
		instance_destroy(id, false);
	}

	instance_destroy(other.id, false);
}
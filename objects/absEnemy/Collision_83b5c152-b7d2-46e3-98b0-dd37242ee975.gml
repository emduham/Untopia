if (other.reflected) {
	hp -= global.currentGunDamage;
	if (hp <= 0) {
		instance_destroy(id, false);
	}

	instance_destroy(other.id, false);
}
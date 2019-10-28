instance_destroy(other.id, false);

hp -= other.damage;
if (hp <= 0) {
	instance_destroy(id, false);
}
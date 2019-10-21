/// @description Insert description here
// You can write your code in this editor

health += 25;
if (health > totalHealth) {
	health = totalHealth;
}
instance_destroy(other.id, false);
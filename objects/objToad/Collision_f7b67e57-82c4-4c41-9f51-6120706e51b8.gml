if (activeSkillCooldown) {
	event_inherited();
} else {
	other.hSpeed *= -1;
	other.vSpeed *= -1;
	other.reflected = true;
}
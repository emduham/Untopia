if (global.gunEquipped && maxMag >= 0) {
	percentAmmo = (currentMag * 100.0) / maxMag;
	draw_healthbar(10, 40, 210, 50, percentAmmo, c_black, c_yellow, c_yellow, 0, true, true);
}
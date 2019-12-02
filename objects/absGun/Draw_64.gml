if (global.gunEquipped && maxMag >= 0) {
	percentAmmo = (currentMag * 100.0) / maxMag;
	draw_healthbar(10, 40, 210, 50, percentAmmo, c_black, c_yellow, c_yellow, 0, true, true);
}

draw_set_color(c_black);
draw_set_halign(fa_center);
if (reloading) {
	draw_text(512, 32, "Reloading");
}
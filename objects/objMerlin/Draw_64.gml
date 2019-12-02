event_inherited();
percentAbility = ((skillCooldown - alarm[3]) * 100.0) / skillCooldown;
draw_healthbar(10, 40, 210, 50, percentAbility, c_black, c_blue, c_blue, 0, true, true);
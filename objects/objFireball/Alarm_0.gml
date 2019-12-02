alarm[0] = 5;



var particle = instance_create_depth(x, y, -400, objFireParticles)
with (particle) {
	xspeed = random(3.0) - 1.5;
	yspeed = random(3.0) - 1.5;
}
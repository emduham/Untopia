x += hSpeed;
y += vSpeed;

image_yscale += 0.03;
image_xscale = image_yscale * 1.05;

if (image_yscale >= 1.5) {
	instance_destroy(id, false);
}
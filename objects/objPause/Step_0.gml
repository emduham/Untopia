if(keyboard_check_pressed(vk_escape)) {
	paused = !paused;
	
	if(paused) {
		if(!sprite_exists(screenShot)) {
			screenShot = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), 0, 0, 0, 0);
		}
		
		instance_deactivate_all(true);
	} else {
		if(sprite_exists(screenShot)) {
			sprite_delete(screenShot);
		}
		
		instance_activate_all();
	}
}


audio_stop_all();

if (room_get_name(room) == "SavannahLevel") {
	audio_play_sound(musSavannah, 0, true);	
} else if (room_get_name(room) == "DesertLevel") {
	audio_play_sound(musDesert, 0, true);	
} else if (room_get_name(room) == "CragLevel") {
	audio_play_sound(musCrag, 0, true);	
}
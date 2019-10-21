/// @description Insert description here
// You can write your code in this editor

if (visible) {
	if (room_exists(room_next(room))) {
		room_goto_next();
	} else {
		room_goto(room_first);
	}
}
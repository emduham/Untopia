/// @description Insert description here
// You can write your code in this editor

x += hSpeed;
y += vSpeed;

if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height)
   {
    instance_destroy(id, false);
   }
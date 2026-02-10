/// @description Insert description here
// You can write your code in this editor
// Destroy if offscreen

if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

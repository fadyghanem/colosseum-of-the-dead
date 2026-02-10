/// @description Insert description here
// You can write your code in this editor

if(speed > 0)
{
	speed -= 1;
}

if(khra)
{
	alarm[0] = 60
	khra = false
}

// Movement input

var w = keyboard_check(ord("W"));
var d = keyboard_check(ord("D"));
var a = keyboard_check(ord("A"));
var s = keyboard_check(ord("S"));
var h = d - a;
var v = s - w;

// Clamp diagonal movement
/*
if(y < obj_wall_top.y + (obj_player.sprite_height div 2) + 10)
{
	if(v == -1)
		v = 0;
}
if(y > obj_wall_bottom.y - (obj_player.sprite_height div 2))
{
	if(v == 1)
		v = 0;
}
if(x < obj_wall_left.x + (obj_player.sprite_width div 2))
{
	if(h == -1)
		h = 0;
}
if(x > obj_wall_right.x - (obj_player.sprite_width div 2))
{
	if(h == 1)
		h = 0;
}
*/




if (h != 0 || v != 0) {
    var len = point_distance(0, 0, h, v);
    h /= len;
    v /= len;
}

// Horizontal movement
if (!place_meeting(x + h * move_speed, y, obj_solid)) {
    x += h * move_speed;
}

// Vertical movement
if (!place_meeting(x, y + v * move_speed, obj_solid)) {
    y += v * move_speed;
}

/*
x += h * move_speed;
y += v * move_speed;
*/



image_angle = point_direction(x, y, mouse_x, mouse_y) -90;

if(!obj_shop_ui.visible && !obj_upg_ui.visible)
{
	// Shooting
	shoot_cooldown--;
	if (mouse_check_button(mb_left) && shoot_cooldown <= 0) {
	    shoot_cooldown = shoot_delay;

	    var dir = point_direction(x, y, mouse_x, mouse_y);
	    var bx = x + lengthdir_x(0, dir);
	    var by = y + lengthdir_y(0, dir);
		
		var recoil_strength = 8;
		
		// Apply opposite push
		global.recoil_x = lengthdir_x(recoil_strength, dir + 180);
		global.recoil_y = lengthdir_y(recoil_strength, dir + 180);
	
		audio_play_sound(snd_pistol_shot, 1, false); // play once
	
		show_debug_message(dir);
	    var bullet = instance_create_layer(bx, by, "Instances", obj_bullet);
	    bullet.direction = dir;
		bullet.image_angle = dir-90;
	    bullet.speed = 20;
		
		if(global.player_equipment.weapon == survivor_shotgun)
		{
			var bullet2 = instance_create_layer(bx, by, "Instances", obj_bullet);
		    bullet2.direction = dir + 5;
			bullet2.image_angle = dir + 5 - 90;
		    bullet2.speed = 20;
			var bullet3 = instance_create_layer(bx, by, "Instances", obj_bullet);
		    bullet3.direction = dir - 5;
			bullet3.image_angle = dir - 5 - 90;
		    bullet3.speed = 20;
		}
		
	}
}



// Invincibility cooldown
if (invincible) {
    invincible_timer--;
    if (invincible_timer <= 0) {
        invincible = false;
    }
}


if (player_health <= 0) {
	
	player_health = max_health;
	
	if(global.survival.wave > 5)
	{
		global.survival.wave -= 5;
	}
	else
	{
		global.survival.wave = 1;
	}
	
    show_message("Game Over! Your score: " + string(obj_spawner.player_score));
	
	room_goto(rm_preparation);
	
	
    //game_restart(); // restarts the game
}



/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) 
{
	 var aura = instance_nearest(x, y, obj_player);

    if (aura != noone && point_distance(x, y, aura.x, aura.y) < 100) 
	{
		var dir = point_direction(x, y, obj_player.x, obj_player.y);
	    x += lengthdir_x(move_speed, dir);
	    y += lengthdir_y(move_speed, dir);
		
		if(point_distance(x, y, aura.x, aura.y) < 10)
		{
			audio_play_sound(snd_coin_pickup, 1, false);
			global.gold_coins += 10 + ((global.survival.wave - 1) * 5);
			instance_destroy();
			
		}
	}
}


x += lengthdir_x(jump_speed, spawn_dir);
y += lengthdir_y(jump_speed, spawn_dir);
if(jump_speed > 0)
{
	jump_speed -= 1;
}

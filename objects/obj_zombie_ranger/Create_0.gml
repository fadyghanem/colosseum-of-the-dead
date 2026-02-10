/// @description Insert description here
// You can write your code in this editor
event_inherited();

max_health = max_health * 0.75;
enemy_health = max_health;
move_speed = 5;

//on death yield coins!!
coin_yield = enemy_health * 20/3;
image_xscale = 1.2;
image_yscale = 1.2;


/*
attack_speed = 0.75;

*/
damage = damage * 1.5;

// Movement
move_speed = 2;
stop_distance = 400; // how close it wants to get before stopping

// Shooting
fire_rate = 60; // frames between shots (1 second at 60 FPS)
can_shoot = false;

// Alarm setup
alarm[0] = fire_rate;




function takeDamage()
{
	
	total_damage = obj_player.bullet_damage;
	/*
	enemy_health -=  total_damage;
	*/
	
	enemy_health -= total_damage;
	
	var splat = instance_create_layer(other.x, other.y - 8, "Instances", obj_hit_splat);
	splat.damage_text = string(total_damage);
	splat.damage_color = c_yellow;
	
	if(enemy_health <= 0)
	{
		die();
	}
	
	move_speed = move_speed / 2 + 1;
	dmg_imp_speed_delay = 20;
}



function die()
{
	instance_destroy(); // destroy bullet
	obj_spawner.kills_in_wave.ranger += 1;
	obj_spawner.player_score += 10;
			
	audio_play_sound(snd_zombie_death, 1, false); // play once
	audio_play_sound(snd_coin_drop, 1, false);
			
	for(var i = 0; i < 2; i++)
	{
		instance_create_layer(x, y, "instances", obj_coin)
	}
}

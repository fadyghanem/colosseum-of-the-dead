/// @description Insert description here
// You can write your code in this editor
event_inherited();




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
	
	move_speed = move_speed / 2 + 0.5;
	dmg_imp_speed_delay = 20;
}


function die()
{
	instance_destroy(); // destroy bullet
	obj_spawner.kills_in_wave.normal += 1;
	obj_spawner.player_score += 10;
			
	audio_play_sound(snd_zombie_death, 1, false); // play once
	audio_play_sound(snd_coin_drop, 1, false);
			
	for(var i = 0; i < 1; i++)
	{
		instance_create_layer(x, y, "instances", obj_coin)
	}
}

/// @description Insert description here
// You can write your code in this editor
// Spawning settings

/*
enemy_count = 0;
max_enemies = 3;


kills_in_wave = 0;
kills_needed = 3;
*/

//wave = 1;

zombie_count = 
{
	normal: 0,
	tank: 0,
	fast: 0,
	ranger: 0,
	stealthy: 0
}
	
max_zombies =
{
	normal: 1 + (global.survival.wave * 2),
	tank: 0,
	fast: 0,
	ranger: 0,
	stealthy: 0
}

kills_in_wave =
{
	normal: 0,
	tank: 0,
	fast: 0,
	ranger: 0,
	stealthy: 0
}

kills_needed =
{
	normal: 1 + (global.survival.wave * 2),
	tank: 0,
	fast: 0,
	ranger: 0,
	stealthy: 0
}


player_score = 0;

nm_spawn_delay = 30;
nm_spawn_timer = 0;

big_spawn_delay = 30;
big_spawn_timer = 0;

fast_spawn_delay = 30;
fast_spawn_timer = 0;

ranger_spawn_delay = 30;
ranger_spawn_timer = 0;


in_wave = true;
wave_delay = 300; // 5 seconds (60 frames = 1 sec)
wave_cooldown = 0;


global.enemy_health = 2 + global.survival.wave div 3;     // every 3 waves, +1 HP
global.enemy_damage = 1 + global.survival.wave div 5;     // every 5 waves, +1 damage.

global.enemy_damage = 40;
global.enemy_health = 150
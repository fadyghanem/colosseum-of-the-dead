/// @description Insert description here
// You can write your code in this editor
// Count how many enemies are in the room
// Count current enemies


if(in_wave)
{
	//enemy_count = instance_number(obj_enemy);
	zombie_count.normal = instance_number(obj_zombie_normal);
	
	
	
	if ((zombie_count.normal < max_zombies.normal) && (kills_in_wave.normal + zombie_count.normal < kills_needed.normal))
	{
		
		show_debug_message("NKIW: " + string(kills_in_wave.normal + zombie_count.normal) + " < KN: " + string(kills_needed.normal));
		
		nm_spawn_timer--;
		if (nm_spawn_timer <= 0) {
	        nm_spawn_timer = nm_spawn_delay;
			
			var spawn_x, spawn_y;
			spawn_x = random_range(130, room_width - 130);
			spawn_y = random_range(160, room_height - 160);
			//instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
			var spawn = instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
			spawn.zombie_type = "normal";
		}
	}
	
	if(global.survival.wave >= 15)
	{
		zombie_count.fast = instance_number(obj_zombie_fast);
		
		if (zombie_count.fast < max_zombies.fast && (kills_in_wave.fast + zombie_count.fast < kills_needed.fast))
		{
			fast_spawn_timer--;
			if (fast_spawn_timer <= 0) {
		        fast_spawn_timer = fast_spawn_delay;
			
				var spawn_x, spawn_y;
				spawn_x = random_range(130, room_width-130);
				spawn_y = random_range(160, room_height-160);
				//instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
				var spawn = instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
				spawn.zombie_type = "fast";
			}
		}
	}
	
	if(global.survival.wave >= 10)
	{
		zombie_count.tank = instance_number(obj_zombie_big);
		
		if (zombie_count.tank < max_zombies.tank && (kills_in_wave.tank + zombie_count.tank < kills_needed.tank))
		{
			big_spawn_timer--;
			if (big_spawn_timer <= 0) {
		        big_spawn_timer = big_spawn_delay;
			
				var spawn_x, spawn_y;
				spawn_x = random_range(130, room_width-130);
				spawn_y = random_range(160, room_height-160);
				//instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
				var spawn = instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
				spawn.zombie_type = "tank";
			}
		}
	}
	
	if(global.survival.wave >= 5)
	{
		zombie_count.ranger = instance_number(obj_zombie_ranger);
		
		if (zombie_count.ranger < max_zombies.ranger && (kills_in_wave.ranger + zombie_count.ranger < kills_needed.ranger))
		{
			ranger_spawn_timer--;
			if (ranger_spawn_timer <= 0) {
		        ranger_spawn_timer = ranger_spawn_delay;
			
				var spawn_x, spawn_y;
				spawn_x = random_range(130, room_width-130);
				spawn_y = random_range(160, room_height-160);
				//instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
				var spawn = instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
				spawn.zombie_type = "ranger";
			}
		}
	}
}
/*
	// Spawn enemies up to the current wave limit
	if (enemy_count < max_enemies && (kills_in_wave + enemy_count < kills_needed)) {
	    spawn_timer--;

	    if (spawn_timer <= 0) {
	        spawn_timer = spawn_delay;

	        // Choose spawn position away from player
	        var px = obj_player.x;
	        var py = obj_player.y;

			var spawn_radius = 120; // how far from player the enemies must spawn

			var spawn_x, spawn_y;
			repeat (100) { // avoid infinite loop
			    spawn_x = random_range(0, room_width);
			    spawn_y = random_range(0, room_height);

			    if (point_distance(spawn_x, spawn_y, px, py) >= spawn_radius) {
			        break;
			    }
			}

	        //instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy);
			instance_create_layer(spawn_x, spawn_y, "Instances", obj_spawn_zombie);
	    }
	}
}

*/

var normal_kg = (kills_in_wave.normal >= kills_needed.normal)		//is normal kill goal reached
var tank_kg = (kills_in_wave.tank >= kills_needed.tank)				//is tank kill goal reached
var fast_kg = (kills_in_wave.fast >= kills_needed.fast)				//is fast kill goal reached
var ranger_kg = (kills_in_wave.ranger >= kills_needed.ranger)		//is ranger kill goal reached
var stealthy_kg = (kills_in_wave.stealthy >= kills_needed.stealthy)	//is stealthy kill goal reached

show_debug_message(normal_kg);
show_debug_message("NKIW: " + string(kills_in_wave.normal) + ", NKN" + string(kills_needed.normal));

if (in_wave && normal_kg && tank_kg && fast_kg && ranger_kg && stealthy_kg) {
	
	show_debug_message("im in next wave");
    in_wave = false;
    wave_cooldown = wave_delay;
}

// Waiting for next wave
if (!in_wave) {
    wave_cooldown--;
	
	/*
    if (wave_cooldown == wave_delay - 1) {
        // Show upgrade menu or selection screen
        instance_create_layer(0, 0, "instances", obj_upgrade_selector);
    }
	*/
	
    if (wave_cooldown <= 0) {
        in_wave = true;
        global.survival.wave += 1;
		/*
        max_enemies += 2;
        kills_in_wave = 0;
        kills_needed += 2;
		*/
		
		show_debug_message("normal kills_needed: " + string(obj_spawner.kills_in_wave.normal));
		
		//NORMAL ZOMBIE PER WAVE LOGIC
		kills_in_wave.normal = 0;
		max_zombies.normal = 1 + (global.survival.wave * 2);
		kills_needed.normal = 1 + (global.survival.wave * 2);
		
		//TANK ZOMBIE PER WAVE LOGIC
		if(global.survival.wave >= 10)
		{
			max_zombies.tank = 2 + (global.survival.wave - 10) div 3; // after wave 15, starting with 2 big zombies, every 3 waves, +1 tank
			kills_in_wave.tank = 0;
			kills_needed.tank = 2 + (global.survival.wave - 10) div 3;
		}
		
		//FAST ZOMBIE PER WAVE LOGIC
		if(global.survival.wave >= 15)
		{
			max_zombies.fast = 2 + (global.survival.wave - 15); // after wave 15, starting with 2 big zombies, every 2 waves, +1 fast
			kills_in_wave.fast = 0;
			kills_needed.fast = 2 + (global.survival.wave - 15);
		}
		
		if(global.survival.wave >= 5)
		{
			max_zombies.ranger = 2 + (global.survival.wave - 5); // after wave 15, starting with 2 big zombies, every 2 waves, +1 fast
			kills_in_wave.ranger = 0;
			kills_needed.ranger = 2 + (global.survival.wave - 5);
		}
		
		/* STILL NOT CODED WE CANT IMPLEMENT YET
		//RANGER ZOMBIE PER WAVE LOGIC
		max_zombies.ranger = 2 + (wave - 10) div 2; // after wave 15, starting with 2 big zombies, every 3 waves, +1 ranger
		kills_in_wave.ranger = 0;
		kills_needed.ranger = 2 + (wave - 10) div 2;

		//STEALTHY ZOMBIE PER WAVE LOGIC
		max_zombies.stealthy = 2 + (wave - 20) div 3; // after wave 15, starting with 2 big zombies, every 3 waves, +1 stealthy
		kills_in_wave.stealthy = 0;
		kills_needed.stealthy = 2 + (wave - 20) div 3;
		*/
		
		//global.enemy_health = 2 + wave div 3;     // every 3 waves, +1 HP
		//global.enemy_damage = 1 + wave div 5;     // every 5 waves, +1 damage
		
		global.enemy_damage += 2;
		global.enemy_health += 50;
    }
}

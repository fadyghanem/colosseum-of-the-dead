
//later we can change the damage depending on the enemy
//other.enemy_health -= obj_player.bullet_damage;


// Check if this zombie has already been hit
if (ds_list_find_index(hit_list, other.id) == -1) {
    
    // ✅ Zombie not in hit_list yet → do damage
	other.takeDamage();
   
    // Add zombie to hit_list
    ds_list_add(hit_list, other.id);
    
    // Check pierce limit
    if (ds_list_size(hit_list) >= max_pierce) {
        instance_destroy(); // bullet vanishes after max pierces
    }
}





/*
switch(other.en_type)
{
	case "normal":
	
	
		if (other.enemy_health <= 0) 
		{
			other.die();
		}
		
		instance_destroy();
		break;
	
	case "tank":
		if (other.enemy_health <= 0) 
		{
			other.die();
		}
		
		instance_destroy();
		break;
	
	case "ranger":
		if (other.enemy_health <= 0) 
		{
		    instance_destroy(other);
		    instance_destroy(); // destroy bullet
		    obj_spawner.kills_in_wave.ranger += 1;
		    obj_spawner.player_score += 10;
			
			audio_play_sound(snd_zombie_death, 1, false); // play once
			audio_play_sound(snd_coin_drop, 1, false);
		} 
		else 
		{
		    instance_destroy(); // destroy bullet anyway
		}
		break;
	
	case "fast":
		if (other.enemy_health <= 0) 
		{
			other.die();
		}
		
		instance_destroy();
		break;
	
	case "jumper":
		if (other.enemy_health <= 0) 
		{
		    instance_destroy(other);
		    instance_destroy(); // destroy bullet
		    obj_spawner.kills_in_wave.normal += 1;
		    obj_spawner.player_score += 10;
			
			for(var i = 0; i < 3; i++)
			{
				instance_create_layer(x, y, "instances", obj_coin)
			}
			
			audio_play_sound(snd_zombie_death, 1, false); // play once
			audio_play_sound(snd_coin_drop, 1, false);
		} 
		else 
		{
		    instance_destroy(); // destroy bullet anyway
		}
		break;
	
	default:
		break;
}

*/

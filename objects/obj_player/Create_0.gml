/// @description Insert description here
// You can write your code in this editor
//can_move_upwards = true
khra = true;

can_heal = true;

heal_coolDown = 120;

// Movement variables
if(global.inventory.has_speed_boots)
{
	move_speed = global.player_movement_speed + (global.items_level.speed_boots * 0.5);
}
else
{
	move_speed = global.player_movement_speed;
}

// Shooting variables
shoot_cooldown = 0;
shoot_delay = 10; // frames between shots

bullet_damage = 1


max_health = 150;
player_health = max_health;
invincible = false;
invincible_timer = 0;

//inventory.has_shield = true/false



function getHit(dmg)
{
	//if shield is bought!
	if(global.inventory.has_armour)
	{
		var percentage = (100-(global.items_level.armour * 10 + 20))/100; //dmg reduction percentage 1 = 30%, 2 = 40%
		dmg = dmg * percentage;//100 - 30 = 70, dmg * 70%..., 100 - 40 = 60, dmg * 60%...
		//dmg = round(dmg * 70/100);
	}
	obj_player.player_health -= dmg;
	obj_player.invincible = true;
	obj_player.invincible_timer = 60; // 1 sec of invulnerability
			
	var splat = instance_create_layer(obj_player.x, obj_player.y - 8, "Instances", obj_hit_splat);
	splat.damage_text = string(dmg);
	splat.damage_color = c_red;
}




function change_wep_to(new_wep)
{
	var wep = new_wep;
	sprite_index = wep;

	switch wep
	{
		case survivor_pistol:
			
			obj_player.bullet_damage = global.weapon_damage.pistol * power(global.weapon_multiplier.pistol, 2);
			obj_player.shoot_delay = 30;
			break;
		case survivor_shotgun:
			obj_player.bullet_damage = global.weapon_damage.shotgun *  power(global.weapon_multiplier.shotgun, 2);
			obj_player.shoot_delay = 60;
			break;
		case survivor_smg:
			obj_player.bullet_damage = global.weapon_damage.SMG * power(global.weapon_multiplier.SMG, 2);
			obj_player.shoot_delay = 5;
			break;
		case survivor_AR:
			obj_player.bullet_damage = global.weapon_damage.assaultRifle * power(global.weapon_multiplier.assaultRifle, 2);
			obj_player.shoot_delay = 10;
			break;
	
		default:
			break;
	}
}


change_wep_to(global.player_equipment.weapon);
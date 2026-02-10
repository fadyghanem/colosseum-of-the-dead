/// @description Insert description here
// You can write your code in this editor
if(global.inventory.health_potion > 0 && can_heal)
{
	if(player_health < max_health)
	{
		if(player_health + 75 > max_health)
		{
			player_health = max_health;
			global.inventory.health_potion--;
			can_heal = false;
			alarm[1] = heal_coolDown;
		}
		else
		{
			player_health += 75;
			global.inventory.health_potion--;
			can_heal = false;
			alarm[1] = heal_coolDown;
		}
	}
}
/// @description Insert description here
// You can write your code in this editor

/* 
change image to equip bought or just disable button...
mark the item as bought
*/



if(active && !bought)
{
	//pay money
	//disable button

	if(global.gold_coins >= 1000 && !global.inventory.has_shotgun)
	{
		global.gold_coins -= 1000;
		global.inventory.has_shotgun = true;
		
		image_index = 3;
		bought = true;
	}
	else
	{
		image_index = 0;
	}

}



if(bought && image_index == 4 && active)
{
	if(global.player_equipment.weapon == survivor_shotgun)
	{
		image_index = 5;
	}
	else
	{
		obj_player.change_wep_to(survivor_shotgun);
		global.player_equipment.weapon = survivor_shotgun;
		image_index = 5;
	}
}
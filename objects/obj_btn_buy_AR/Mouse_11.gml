/// @description Insert description here
// You can write your code in this editor

if(!bought)
{
	image_index = 0;
}
else if(bought && active)
{
	
	if(global.player_equipment.weapon == survivor_AR)
	{
		image_index = 5;
	}
	else
	{
		image_index = 3;
	}
}


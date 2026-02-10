/// @description Insert description here
// You can write your code in this editor

/* 
change image to equip bought or just disable button...
mark the item as bought
*/



if(active && bought && level <= 5)
{
	//pay money
	//disable button
	
	switch level{
	case 1:
		if(global.gold_coins >= 10000)
		{
			global.gold_coins -= 10000;
			global.items_level.armour++;
			obj_armour_spr_1.image_index++;
		}
		break;
	case 2:
		if(global.gold_coins >= 20000)
		{
			global.gold_coins -= 20000;
			global.items_level.armour++;
			obj_armour_spr_1.image_index++;
		}
		break;
	case 3:
		if(global.gold_coins >= 50000)
		{
			global.gold_coins -= 50000;
			global.items_level.armour++;
			obj_armour_spr_1.image_index++;
		}
		break;
	case 4:
		if(global.gold_coins >= 100000)
		{
			global.gold_coins -= 100000;
			global.items_level.armour++;
			obj_armour_spr_1.image_index++;
		}
		break;
	default:
		break;
	
	}

	if(level == 5)
	{
		image_index = 2;
	}
	else
	{
		image_index = 0;
	}

}
else 
{
	image_index = 2;
}




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

	if(global.gold_coins >= 1000 && !global.inventory.has_armour)
	{
		global.gold_coins -= 1000;
		global.inventory.has_armour = true;
		
		image_index = 2;
		bought = true;
	}
	else
	{
		image_index = 0;
	}

}




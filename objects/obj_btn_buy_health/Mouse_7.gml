/// @description Insert description here
// You can write your code in this editor

/* 
change image to equip bought or just disable button...
mark the item as bought
*/


if(global.gold_coins >= 100 && global.inventory.health_potion < 5)
{
	global.gold_coins -= 100;
	global.inventory.health_potion++;
}
image_index = 0;


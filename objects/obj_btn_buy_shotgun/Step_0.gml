/// @description Insert description here
// You can write your code in this editor
bought = global.inventory.has_shotgun;
if(obj_shop_ui.visible)
{
	visible = true;
	active = true;
}
else
{
	visible = false;
	active = false;
}
image_speed = 0

if(bought && active && image_index == 5)
{
	
	if(global.player_equipment.weapon != survivor_shotgun)
	{
		image_index = 3;
	}

}
/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (show_prompt)
{
	if(keyboard_check_pressed(ord("E")))
	{
		obj_shop_ui.shop_open = true;
		
	}
}
else
{
	obj_shop_ui.shop_open = false;
	obj_shop_ui.visible = false;
}

/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (show_prompt)
{
	if(keyboard_check_pressed(ord("E")))
	{
		obj_upg_ui.upgrades_open = true;
		
	}
}
else
{
	obj_upg_ui.upgrades_open = false;
	obj_upg_ui.visible = false;
}

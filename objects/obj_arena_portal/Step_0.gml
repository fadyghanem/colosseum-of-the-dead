/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_player)) 
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    show_prompt = (dist < interaction_range);
	
	if(show_prompt)
	{
		if(keyboard_check_pressed(ord("E")))
		{
			room_goto(Room1);
		}
	}
}

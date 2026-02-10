/// @description Insert description here
// You can write your code in this editor

if(obj_player.player_health / obj_player.max_health > 0)
{
	image_xscale = (obj_player.player_health / obj_player.max_health);
}
else
{
	image_xscale = 0.001;
}



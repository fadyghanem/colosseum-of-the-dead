/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_healthbar, 0, x, y)
draw_self()

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string(obj_player.player_health) + " / " + string(obj_player.max_health));

/// @description Insert description here
// You can write your code in this editor
draw_self()


draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(room == Room1)
{
	draw_text(x, y-22, string(global.survival.wave));
}



draw_text(x, y, string(global.gold_coins));


draw_sprite(coin, coin_index, x + 80, y + 11);

draw_sprite(spr_health_potion_1, 0, x - 80, y + 60);
draw_text(x - 60, y + 60, string(global.inventory.health_potion)+ "/5   ||click 'E' to consume||");

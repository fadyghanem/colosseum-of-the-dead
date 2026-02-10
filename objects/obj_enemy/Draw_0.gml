// Draw enemy HP bar
draw_self()

var bar_width = 24;
var bar_height = 4;
var hp_ratio = enemy_health / max_health;

var bx1 = x - bar_width / 2;
var bx2 = x + bar_width / 2;
var by1 = y - sprite_height / 2 - 10;
var by2 = by1 + bar_height;

// Red background (full)
draw_set_color(c_red);
draw_rectangle(bx1, by1, bx2, by2, false);

// Green foreground (current HP)
draw_set_color(c_lime);
draw_rectangle(bx1, by1, bx1 + (bar_width * hp_ratio), by2, false);

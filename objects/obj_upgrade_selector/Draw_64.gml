var w = room_width;
var h = room_height;

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(-1); // Use default font if none is set

draw_text(w / 2, h / 2 - 60, "Choose an Upgrade:");

// Button 1 – Faster Fire
draw_set_color(c_blue);
draw_rectangle(w / 2 - 130, h / 2 - 20, w / 2 - 30, h / 2 + 30, false);
draw_set_color(c_white);
draw_text(w / 2 - 80, h / 2 + 5, "Faster Fire");

// Button 2 – More HP
draw_set_color(c_blue);
draw_rectangle(w / 2 + 30, h / 2 - 20, w / 2 + 130, h / 2 + 30, false);
draw_set_color(c_white);
draw_text(w / 2 + 80, h / 2 + 5, "More HP");

// Button 3 – More speed
draw_set_color(c_blue);
draw_rectangle(w / 2 + 190, h / 2 - 20, w / 2 + 290, h / 2 + 30, false);
draw_set_color(c_white);
draw_text(w / 2 + 240, h / 2 + 5, "More Speed");

// Button 4 – More damage
draw_set_color(c_blue);
draw_rectangle(w / 2 - 290, h / 2 - 20, w / 2 - 190, h / 2 + 30, false);
draw_set_color(c_white);
draw_text(w / 2 - 240, h / 2 + 5, "More Damage");



// DEBUG: draw the clickable areas in red (actual hitboxes)
draw_set_color(c_red);
draw_set_alpha(0.3);

// Button 1 Hitbox
draw_rectangle(room_width/2 - 130, room_height/2 - 20, room_width/2 - 30, room_height/2 + 30, false);

// Button 2 Hitbox
draw_rectangle(room_width/2 + 30, room_height/2 - 20, room_width/2 + 130, room_height/2 + 30, false);

draw_set_alpha(1); // Reset alpha

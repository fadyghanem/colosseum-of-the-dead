if (!visible) exit;

draw_self()
/*
draw_set_alpha(0.9);
draw_set_color(c_black);
draw_rectangle(100, 100, 500, 400, false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_text(120, 120, "SHOP");

var btn_w = 300;
var btn_h = 40;
var btn_x = 120;
var btn_y = 160;

// Weapon Upgrade Button
draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);
draw_text(btn_x + 10, btn_y + 10, "Upgrade Weapon");

// Speed Upgrade Button
draw_rectangle(btn_x, btn_y + 60, btn_x + btn_w, btn_y + 60 + btn_h, false);
draw_text(btn_x + 10, btn_y + 70, "Upgrade Speed");

// Detect Clicks
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);

    if (mx > btn_x && mx < btn_x + btn_w) {
        if (my > btn_y && my < btn_y + btn_h) {
            // Upgrade Weapon clicked
            instance_create_layer(0, 0, "UI", obj_upgrade_ui);
        } else if (my > btn_y + 60 && my < btn_y + 60 + btn_h) {
            // Upgrade Speed clicked
            instance_create_layer(0, 0, "UI", obj_upgrade_ui);
        }
    }
}
*/
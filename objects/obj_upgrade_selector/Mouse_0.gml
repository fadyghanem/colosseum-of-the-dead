var mx = mouse_x;
var my = mouse_y;

// Button 1 – Faster Fire
if (mx > room_width/2 - 130 && mx < room_width/2 - 30 &&
    my > room_height/2 - 20 && my < room_height/2 + 30) {
    obj_player.shoot_delay = max(2, obj_player.shoot_delay - 2);
    instance_destroy();
    exit;
}

// Button 2 – More HP
if (mx > room_width/2 + 30 && mx < room_width/2 + 130 &&
    my > room_height/2 - 20 && my < room_height/2 + 30) {
    obj_player.max_health += 1;
    obj_player.health = obj_player.max_health;
    instance_destroy();
    exit;
}

var mx = mouse_x;
var my = mouse_y;

// Button 1 – Faster Fire
if (mx > room_width/2 - 130 && mx < room_width/2 - 30 &&
    my > room_height/2 - 20 && my < room_height/2 + 30) {
    obj_player.shoot_delay = max(10, obj_player.shoot_delay - 5);
    instance_destroy();
    exit;
}

// Button 2 – More HP
if (mx > room_width/2 + 30 && mx < room_width/2 + 130 &&
    my > room_height/2 - 20 && my < room_height/2 + 30) {
    obj_player.max_health += 1;
    obj_player.player_health = obj_player.max_health;
    instance_destroy();
    exit;
}

// Button 3 – More speed
if (mx > room_width/2 + 190 && mx < room_width/2 + 290 &&
    my > room_height/2 - 20 && my < room_height/2 + 30) {
    obj_player.move_speed += 1;
    instance_destroy();
    exit;
}

// Button 4 – More Damage
if (mx > room_width/2 - 290 && mx < room_width/2 - 190 &&
    my > room_height/2 - 20 && my < room_height/2 + 30) {
    obj_player.bullet_damage += 1;
    instance_destroy();
    exit;
}
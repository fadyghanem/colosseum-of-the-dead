// Check if player exists
if (instance_exists(obj_player)) {
	
	image_angle = point_direction(x, y, obj_player.x, obj_player.y) +-90;// - 90 bcs its facing upward and it needs to face right
	
    // Check for collision with aura
    var aura = instance_nearest(x, y, obj_player_aura);

    if (aura != noone && point_distance(x, y, aura.x, aura.y) < aura.aura_radius) {
        // In attack range — stop moving and attack
		if (!obj_player.invincible) {
			
			obj_player.getHit(damage);

		    // Optional: knockback or flash effect later
		}
    } else {
        // Chase player
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        x += lengthdir_x(move_speed, dir);
        y += lengthdir_y(move_speed, dir);
    }
}


// Movement logic

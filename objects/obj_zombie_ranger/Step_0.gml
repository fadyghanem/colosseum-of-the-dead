/// @description Insert description here
// You can write your code in this editor
state = "chasing";
switch (state) {
    case "spawning":
        // Shake effect (simple jitter)
        x += random_range(-2, 2);
        y += random_range(-2, 2);

        spawn_anim_timer--;
        if (spawn_anim_timer <= 0) {
            state = "chasing";
        }
        break;

    case "chasing":
	
		//event_inherited();
        // Your normal movement toward player here
		
		// In ranger's Step event before shooting
		
		image_angle = point_direction(x, y, obj_player.x, obj_player.y) +-90;// - 90 bcs its facing upward and it needs to face right
		// Get player position
		var px = obj_player.x;
		var py = obj_player.y;

		// Distance to player
		var dist = point_distance(x, y, px, py);

		// Movement logic
		if (dist > stop_distance) {
		    // Move closer if too far
		    mp_potential_step(px, py, move_speed, false);
		} else {
		    // Stop moving when in range
		    speed = 0;

		    // Shooting
		    if (can_shoot) {
		        // Aim at the player (we can later add prediction)
		        var dir = point_direction(x, y, px, py);
        
		        var bullet = instance_create_layer(x, y, "Instances", obj_enemy_projectile);
				bullet.direction = dir;
				bullet.image_angle = dir-90;
				bullet.speed = 6;
        
		        can_shoot = false;
		        alarm[0] = fire_rate; // reset cooldown
		    }
		}


		
		
		
		
		
		
		
		
		
		
		
		
		
        break;
}
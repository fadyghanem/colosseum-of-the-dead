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
	
		event_inherited();
        // Your normal movement toward player here
        break;
}



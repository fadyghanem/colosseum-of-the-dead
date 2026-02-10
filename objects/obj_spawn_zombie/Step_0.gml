if (!spawn_done) {
    spawn_timer--;
/*
    if (spawn_timer == 0) {
        // Spawn the zombie
		var enemy_pool = [obj_zombie, obj_zombie_big]; // later you'll add more variants
		var chosen = choose(enemy_pool[0], enemy_pool[1]);
		//instance_create_layer(x, y, "Instances", chosen);
        var new_zombie = instance_create_layer(x, y, "Instances", chosen);
		//instance_create_layer(x, y, "Instances", obj_zombie);
        new_zombie.state = "spawning"; // we'll use this in zombie code
        new_zombie.spawn_anim_timer = 90;

        spawn_done = true;
    }
	*/
	if(spawn_timer == 0)
	{
		
		var audio_ground_crack = audio_play_sound(snd_ground_crack, 0, false)
		audio_sound_gain(audio_ground_crack, 0.5, 0);
		audio_sound_pitch(audio_ground_crack, 4);
		var new_zombie
		switch(zombie_type)
		{
			case "normal":
				new_zombie = instance_create_layer(x, y, "Instances", obj_zombie_normal);
		        new_zombie.state = "spawning"; // we'll use this in zombie code
		        new_zombie.spawn_anim_timer = 90;
				break;
				
			case "tank":
				new_zombie = instance_create_layer(x, y, "Instances", obj_zombie_big);
		        new_zombie.state = "spawning"; // we'll use this in zombie code
		        new_zombie.spawn_anim_timer = 90;
				break;
				
			case "fast":
				new_zombie = instance_create_layer(x, y, "Instances", obj_zombie_fast);
		        new_zombie.state = "spawning"; // we'll use this in zombie code
		        new_zombie.spawn_anim_timer = 90;
				break;
				
			case "ranger":
				new_zombie = instance_create_layer(x, y, "Instances", obj_zombie_ranger);
		        new_zombie.state = "spawning"; // we'll use this in zombie code
		        new_zombie.spawn_anim_timer = 90;
				break;
				
		}
		spawn_done = true;
	}
}

if (spawn_done) {
    image_alpha -= 0.01; // fade the crack
    if (image_alpha <= 0) {
        instance_destroy();
    }
} 

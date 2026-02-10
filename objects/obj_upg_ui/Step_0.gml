if (upgrades_open) {
    visible = true;
	//display_buttons();
    // Close shop with Escape or right click
    if (keyboard_check_pressed(vk_escape) || mouse_check_button_pressed(mb_right)) {
        upgrades_open = false;
        visible = false;
    }
}

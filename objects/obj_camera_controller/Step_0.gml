// Decay recoil over time
global.recoil_x *= recoil_decay;
global.recoil_y *= recoil_decay;

// Camera target position
var cam_x = (room_width/2) - (camera_get_view_width(view_camera[0]) / 2);
var cam_y = (room_height/2) - (camera_get_view_height(view_camera[0]) / 2);

// Apply recoil offset
cam_x += global.recoil_x;
cam_y += global.recoil_y;

// Move camera
camera_set_view_pos(view_camera[0], cam_x, cam_y);
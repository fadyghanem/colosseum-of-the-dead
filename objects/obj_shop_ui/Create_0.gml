visible = false;
shop_open = false;

//x = room_width/2 
//y = room_height/2


function display_buttons()
{
	instance_create_layer(x,y, "instances", obj_btn_buy_health);
}
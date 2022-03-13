if (Ocam.power_left<=95)
{
	with (instance_create_layer(x,y,"abilities",biglazer))
	{
		direction = point_direction(x,y,mouse_x,mouse_y);
		speed = 8;
		with (Ocam) power_left=power_left+5
	}
}
	if (!instance_exists(abbilty3)) && (CanMelee==true) && (Ocam.power_left<=85)
	{
		instance_create_layer(mouse_x,mouse_y,"abilities",abbilty3);
		instance_create_layer(Oplayer.x+20,Oplayer.y,layer,wepon);
		with (Ocam) power_left=power_left+15
	}
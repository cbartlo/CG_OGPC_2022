	if (!instance_exists(ability2)) && (CanMelee==true) && (Ocam.power_left<=80)
	{
		instance_create_layer(mouse_x,mouse_y,"abilities",ability2);
		instance_create_layer(Oplayer.x+20,Oplayer.y,layer,wepon);
		with (Ocam) power_left=power_left+20
	}
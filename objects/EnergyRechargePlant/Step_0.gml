if (keyboard_check(ord("W"))) || (keyboard_check(vk_up))
{
	if (Ocam.power_left>0)
	{
		if (place_meeting(x,y,Oplayer))
		{
			with (Ocam)
			{
				power_left=power_left-1
			}
		}
	}
}
if (place_meeting(x,y,Oplayer)) && (instance_exists(Room4Tutorial)) Room4Tutorial.swap=true

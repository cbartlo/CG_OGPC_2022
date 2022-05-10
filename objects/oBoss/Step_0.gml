if (move_timer<=0)
{
	if (numberofattacks<maximumattacks)
	{
		instance_create_layer(random_range(65,1050),random_range(95,600),"EnemyAttacks",oGas)
		with (oGas)
		{
			direction = point_direction(x,y,Oplayer.x-20,Oplayer.y+20)
		}
	}
	move_timer=300
}
else move_timer -= 1
if (hp<=0)
{
	with (oGas) instance_destroy()
	instance_destroy()
}
attackdelay -= 1

Oplayer.canE=false

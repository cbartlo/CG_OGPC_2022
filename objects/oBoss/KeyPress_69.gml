if (attackdelay<=0) && (numberofattacks<maximumattacks)
{
	with (instance_create_layer(random_range(65,1050),random_range(95,600),"EnemyAttacks",oGas))
		{
			direction = point_direction (x,y,Oplayer.x-20,Oplayer.y+20)
		}
	attackdelay=20
}
else if (attackdelay<=0) attackmovespeed += 0.1

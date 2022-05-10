if (place_meeting(x,y,OWall))
{
	instance_create_layer(random_range(65,1050),random_range(95,600),"EnemyAttacks",oGas)
	instance_destroy()
}
if (y-Oplayer.y<30) && (y-Oplayer.y>-30)
{
	instance_create_layer(random_range(65,1050),random_range(95,600),"EnemyAttacks",oGas)
	instance_destroy()
}
bounces_left=10
with (oBoss) numberofattacks += 1

if (move_timer<=0)
{
	instance_create_layer(x,y,"EnemyAttacks",oGas)
	with (oGas)
	{
		direction = point_direction(x,y,Oplayer.x,Oplayer.y)
	}
	move_timer=300
	attackmovespeed += 1
}
else move_timer -= 1
if (Oplayer.hsp==0) && (Oplayer.vsp>0) move_timer -= 4
if (hp<=0)
{
	with (oGas) instance_destroy()
	instance_destroy()
}

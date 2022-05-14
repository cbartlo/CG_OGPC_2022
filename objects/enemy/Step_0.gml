//get player direction
if (Oplayer.x<x) && (airborne==false)
{
	move=-1
}
if (Oplayer.x>x) && (airborne==false)
{
	move=1
}
if (Oplayer.x==x) && (airborne==false)
{
 move=0	
}
//cauculate movement
hsp = move * walksp;
vsp = vsp + grv;

if (hsp != 0)
    image_xscale = sign(hsp)




//horizontal colision 
if (place_meeting(x+hsp,y,OWall))
{  
	while (!place_meeting(x+sign(hsp),y,OWall)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//vertical colision 
if (place_meeting(x,y+vsp,OWall))
{  
	while (!place_meeting(x,y+sign(vsp),OWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (hp <= 0) instance_destroy();



//animate
if (hsp!=0)
{
	if (animationdelay==0) && (sprite_index==spritemushroomenemybasic)
	{
		sprite_index=spritemushroomenemybasic2
		animationdelay=40
	}
	if (animationdelay==0) && (sprite_index==spritemushroomenemybasic2)
	{
		sprite_index=spritemushroomenemybasic3
		animationdelay=40
	}
	if (animationdelay==0) && (sprite_index==spritemushroomenemybasic3)
	{
		sprite_index=spritemushroomenemybasic
		animationdelay=40
	}
	animationdelay -= 1
}

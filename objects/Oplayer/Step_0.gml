//get player input
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left)
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right)
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)

//cauculate movement 
if (confusion=false) var move = key_right - key_left;
if (confusion=true)
{
	var move = key_left - key_right
	instance_create_layer(x,y+20,layer,ConfusionSymbol)
}
overridehsp = move * walksp
hsp = move * walksp;
vsp = vsp + grv;

if (hsp != 0)
    image_xscale = sign(hsp)

vsp += grv;

if(keyboard_check_pressed(vk_space) and jump_current > 0)
{
    vsp = -7;
    jump_current--;
	with (enemy)
	{
		airborne=true
	}
}


if(place_meeting(x, y + vsp, OWall))
{
    while(!place_meeting(x, y + sign(vsp), OWall))
    {
        y += sign(vsp);
    }
 
    if(vsp > 0)
    {
        jump_current = jump_number;
    }
 
   vsp  = 0;
   with (enemy)
   {
	   airborne=false
   }
}

y += vsp;

if (MeleeDelay>0) MeleeDelay--

if (MeleeDelay==0) CanMelee=true

if (hsp==0) || (vsp<0) image_speed=0;
else image_speed=1

//horizontal colision 
if (place_meeting(x+hsp,y,OWall)) 
{  
	while (!place_meeting(x+sign(hsp),y,OWall)) && (sign(overridehsp)!=sign(hsp))
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


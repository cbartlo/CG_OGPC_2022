if (next==true) story_text="If you recharge too much the plant needs to recharge."

if (swap==true) && (next==false) story_text="Press W or up arrow to use."
if (swap==false) story_text="In this room there is a plant that lets you recharge energy."
if (keyboard_check_pressed(ord("W"))) || (keyboard_check_pressed(cr_uparrow))
{
	if (swap==true) next=true
}

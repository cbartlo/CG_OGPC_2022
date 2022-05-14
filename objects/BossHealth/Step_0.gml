if (swap==2) story_text="When you have 150 send it at the mushroom to defeat it. (press to continue)"
if (swap==3) story_text=string(Slime.bounces)+"/"+string(Slime.bounces_threshhold) + " Acumulated power"if (swap==0) story_text="Press E to send Slimey around the room."
if (swap==1) story_text="Acrue power by bouncing. (press to continue)"
if (swap==1) && (mouse_check_button(mb_left)) && (buffer_switch==false)
{
	swap=2
	buffer_switch=true
}
if (swap==2) && (mouse_check_button(mb_left)) && (buffer_switch==false)
{
	swap=3
	buffer_switch=true
}
if (mouse_check_button_released(mb_left)) buffer_switch=false

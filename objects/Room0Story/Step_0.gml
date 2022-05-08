if (swap==0) story_text="You wake up in a strange forest (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==0)
{
	swap=1
	buffer_switch=true
}
story_text="You have no clue where you are (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==1)
{
	swap=2
	buffer_switch=true
}
if (mouse_check_button_released(mb_left)) buffer_switch=false
if (swap==2) story_text="Then, you see a slime sitting next to you (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==2) && (buffer_switch=false)
{
	swap=3
	buffer_switch=true
}
if (swap==3) story_text="The slime says 'Hello, my name is...' (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==3) && (buffer_switch=false)
{
	swap=4
	buffer_switch=true
}
if (swap==4) story_text="'Slimey, the Slime. (press to continue)."

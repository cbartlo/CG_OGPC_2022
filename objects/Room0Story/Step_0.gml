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
if (swap==4) story_text="'Slimey, the Slime.' (press to continue)."
if (mouse_check_button_pressed(mb_left)) && (swap==4) && (buffer_switch=false)
{
	swap=5
	buffer_switch=true
}
if (swap==5) story_text="'By the way where are we?' Slimey asks (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==5) && (buffer_switch=false)
{
	swap=6
	buffer_switch=true
}
if (swap==6) story_text="'I thought you might know.' You respond (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==6) && (buffer_switch=false)
{
	swap=7
	buffer_switch=true
}
if (swap==7) story_text="'We should probably find out were we are' Slimey says (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==7) && (buffer_switch=false)
{
	swap=8
	buffer_switch=true
}
if (swap==8) story_text="'We need to find out where we are' You say (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==8) && (buffer_switch=false)
{
	swap=9
	buffer_switch=true
}
if (swap==9) story_text="'If we work together we can do it' Slimey says (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==9) && (buffer_switch=false)
{
	swap=10
	buffer_switch=true
}
if (swap==10) story_text="I get tired easily,' says Slimey (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==10) && (buffer_switch=false)
{
	swap=11
	buffer_switch=true
}
if (swap==11) story_text="'Where as you can walk for a long time.' (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==11) && (buffer_switch=false)
{
	swap=12
	buffer_switch=true
}
if (swap==12) story_text="'If you carry me I can protect you,' (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==12) && (buffer_switch=false)
{
	swap=13
	buffer_switch=true
}
if (swap==13) story_text="'And we can get back to where we came from.' (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==13) && (buffer_switch=false)
{
	swap=14
	buffer_switch=true
}
if (swap==14) story_text="'What do you say?' (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==14) && (buffer_switch=false)
{
	swap=15
	buffer_switch=true
	with (Oplayer)
	{
		canmove=true
		canE=true
	}
	with (biglazer)
	{
		instance_destroy()
	}
}
if (swap==15) story_text="'Sure!' You reply"
if (swap!=15)
{
	with (Oplayer)
	{
		canmove=false
		canE=false
		canV=false
		canQ=false
	}
}
	

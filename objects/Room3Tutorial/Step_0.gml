if (swap==0) story_text="Slimey, the Slime throws damaging bloblets when you press E"
if (keyboard_check(ord("E"))==true) && (swap==0) swap=1if (swap==1) story_text="When Slimey, the Slime throws it's bloblets... (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==1)
{
	swap=2
	buffer_switch=true
}
if (mouse_check_button_released(mb_left)) buffer_switch=false
if (swap==2) story_text="...it gets exhausted. (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==2) && (buffer_switch=false)
{
	swap=3
	buffer_switch=true
}
if (swap==3) story_text="When SLIME EXHAUSTION LEVEL reaches 100, (press to continue)"
if (mouse_check_button_pressed(mb_left)) && (swap==3) && (buffer_switch=false) swap=4
if (swap==4) story_text="Slimey, the Slime can no longer throw bloblets."

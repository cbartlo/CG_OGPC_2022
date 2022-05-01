if (instance_exists(Oplayer))
{
	draw_set_font(ExhaustionLevelText)
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	
	var offset=2
	var txt="Slime Exhaustion Level:" + string(power_left);
	
	if (power_left==0) power_offset=5
	else power_offset=power_left
	
	if (0<=power_left<10)
	{
		camera_x=log10(gui_width-(gui_width/2-400)+log10(power_offset)-190)+1000
		camera_y=gui_height-gui_margin-444
	}
	if (9<power_left<100)
	{
		camera_x=log10(gui_width-(gui_width/2-400)+log10(power_offset))+1000
		camera_y=gui_height-gui_margin-444
	}
	draw_set_color(c_black)
	draw_text(camera_x+(offset+6),camera_y,txt)
	draw_text(camera_x-(offset+6),camera_y,txt)
	draw_text(camera_x,camera_y+(offset+6),txt)
	draw_text(camera_x,camera_y-(offset+6),txt)
	draw_set_color(c_black)
	draw_text(camera_x+(offset+7),camera_y,txt)
	draw_text(camera_x-(offset+7),camera_y,txt)
	draw_text(camera_x,camera_y+(offset+7),txt)
	draw_text(camera_x,camera_y-(offset+7),txt)
	draw_set_color(c_red)
	draw_text(camera_x+offset,camera_y,txt)
	draw_text(camera_x-offset,camera_y,txt)
	draw_text(camera_x,camera_y+offset,txt)
	draw_text(camera_x,camera_y-offset,txt)
}

if (story=true)
{
	draw_set_font(StoryFont)
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	
	var offset=2
	var txt=string(story_text)+"  ";
	
	draw_set_color(c_black)
	draw_text(display_get_gui_width()+(offset+6),display_get_gui_height(),txt)
	draw_text(display_get_gui_width()-(offset+6),display_get_gui_height(),txt)
	draw_text(display_get_gui_width(),display_get_gui_height()+(offset+6),txt)
	draw_text(display_get_gui_width(),display_get_gui_height()-(offset+6),txt)
	
	draw_text(display_get_gui_width()+(offset+7),display_get_gui_height(),txt)
	draw_text(display_get_gui_width()-(offset+7),display_get_gui_height(),txt)
	draw_text(display_get_gui_width(),display_get_gui_height()+(offset+7),txt)
	draw_text(display_get_gui_width(),display_get_gui_height()-(offset+7),txt)
	draw_set_color(c_yellow)
	draw_text(display_get_gui_width()+offset,display_get_gui_height(),txt)
	draw_text(display_get_gui_width()-offset,display_get_gui_height(),txt)
	draw_text(display_get_gui_width(),display_get_gui_height()+offset,txt)
	draw_text(display_get_gui_width(),display_get_gui_height()-offset,txt)
}

if (menu_control)
{
	if (keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++
		if (menu_cursor>=menu_items) menu_cursor=0
	}
	if (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--
		if (menu_cursor<0) menu_cursor=menu_items-1
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_committed=menu_cursor
		menu_control=false
	}
}

if (menu_committed!=-1)
{
	switch (menu_committed)
	{
		case 2: room_goto_next(); break;
		case 1:
		{
			if (!file_exists(SAVEFILE))
			{
				room_goto_next()
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				room_goto(target)
			}
		}
		break;
		case 0: game_end(); break;
	}
}
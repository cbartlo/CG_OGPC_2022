var file = file_text_open_read(SAVEFILE);
target = file_text_read_real(file)
file_text_close(file);
room_goto(target)
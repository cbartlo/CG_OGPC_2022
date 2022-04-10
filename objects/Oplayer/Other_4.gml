//overwrite
if (file_exists(SAVEFILE)) file_delete(SAVEFILE)
//create new file
var file
file=file_text_open_write(SAVEFILE)
file_text_write_real(file,room)
file_text_close(file)
//ability use
if (room>4) canE=true
if (room>6) canV=true
if (room>8) canQ=true

#macro SAVEFILE "Save.sav"

gui_width=display_get_gui_width()
gui_height=display_get_gui_height()
gui_margin=gui_height/2-200

menu_x=gui_width-(gui_width/2-400)
menu_y=gui_height-gui_margin
menu_x_target=gui_width-gui_margin
menu_speed=25//lower is faster
menu_font=MenuText
menu_itemheight=font_get_size(MenuText)
menu_committed=-1
menu_control=true

menu[2]="NEW GAME"
menu[1]="CONTINUE"
menu[0]="QUIT           "

menu_items=array_length_1d(menu)
menu_cursor=2
Cam=view_camera[0]   
follow=Oplayer
view_w_half=camera_get_view_width(Cam)*0.5
view_h_half=camera_get_view_height(Cam)*0.5
xto=xstart
yto=ystart

//newcode
gui_width=display_get_gui_width()
gui_height=display_get_gui_height()
gui_margin=gui_height/2-200

camera_x=gui_width-(gui_width/2-400)-99
camera_y=gui_height-gui_margin-444

if (instance_exists(VariableStorer)) power_left=VariableStorer.slime_exhaustion_level
else power_left=0

story=true
story_text=" "

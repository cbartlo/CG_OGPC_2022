if (instance_exists(follow))
{
    xto=follow.x
    yto=follow.y
}
x+=(xto-x)/25
y+=(yto-y)/25

x=clamp(x,view_w_half,room_width-view_w_half)
y=clamp(y,view_h_half,room_height-view_h_half)

camera_set_view_pos(Cam,x-view_w_half,y-view_h_half)

if (instance_exists(TheStoryIs)) story_text=TheStoryIs.story_text


if (layer_exists("Mountains"))
{
	layer_x("Mountains",x)
}
if (layer_exists("Trees"))
{
	layer_x("Trees",(x/5)-100)
}
if (layer_exists("Trees0"))
{
	layer_x("Trees0",x/2-80)
}
if (layer_exists("Trees2"))
{
	layer_x("Trees2",x/4-50)
}
if (layer_exists("Trees3"))
{
	layer_x("Trees3",(x/1.8)+80)
}

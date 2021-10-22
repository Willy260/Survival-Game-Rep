/// @description Insert description here
// You can write your code in this editor
// move view

#region 

halfviewwidth = camera_get_view_width(view_camera[0] / 2);
halfviewheight = camera_get_view_height(view_camera[0] / 2);

camera_set_view_pos(view_camera[0], x - halfviewwidth, y - halfviewheight);

#endregion
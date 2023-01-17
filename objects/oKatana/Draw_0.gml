/// @description UI for slash
draw_self();

var m2 = mouse_check_button(mb_right);
if m2 and alarm[1]<0{
	var l = range;
	var d = point_direction(x,y,mouse_x,mouse_y);
	var _x = x+lengthdir_x(l,d);
	var _y = y+lengthdir_y(l,d);
	var xx = x+lengthdir_x(8,d);
	var yy = y+lengthdir_y(8,d);
	var w = 2;
	var c = c_red;
	draw_line_width_color(xx,yy,_x,_y,w,c,c);
}




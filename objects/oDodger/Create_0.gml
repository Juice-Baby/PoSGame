/// @description Setup
hsp = 0;
vsp = 0;
moveSpeed = 2;
dashSpeed = 3;
accel = 25;
hpMax = 3;
hp = hpMax;

live = function(){
	var p = oPlayer;
	var mDir = point_direction(x,y,p.x,p.y);
	
	jumpApr(moveSpeed,mDir,moveSpeed/accel);
	
	x+=hsp;
	y+=vsp;
	var vDir = point_direction(x,y,x+hsp,y+vsp);
	var vDis = point_distance(x,y,x+hsp,y+vsp);
	image_angle+=vDis*9;
	
	var l = 16;
	var r = 32;
	var _x = x+lengthdir_x(l,mDir);
	var _y = y+lengthdir_y(l,mDir);
	var coll = collision_circle(_x,_y,r,oProjectile,false,true);
	if coll!=noone and alarm[0]<0{
		var d = point_direction(x,y,coll.x,coll.y);
		var a = sign(angle_difference(mDir,d))*-1;
		jumpAdd(dashSpeed,vDir+(90*a));
		alarm[0] = 30;
	}
}

depth = 50;

state = live;



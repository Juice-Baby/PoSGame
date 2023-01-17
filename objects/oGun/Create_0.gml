/// @description
damage = 1;
range = 196;
cooldown = 8;
distance = 8;

live = function(){
	var p = oPlayer;
	var mDir = point_direction(x,y,mouse_x,mouse_y);

	x=p.x;
	y=p.y;
	jump(distance,mDir);
	image_angle = mDir;
	
	var m1 = mouse_check_button(mb_left);
	if m1 and alarm[0]<0{
		var m = timePart(sMuzzleFlash,4,irandom(359),0,0,0);
		with(m){
			image_speed = 0;
			jump(6,mDir);
		}
		var b = instance_create_depth(x,y,depth,oBullet);
		with(b){
			direction = mDir;
			image_angle = mDir;
			speed = 12;
			damage = other.damage;
			alarm[0] = other.range/speed;
		}
		with(oCamera){
			jump(2,mDir+180);
		}
		alarm[0] = cooldown;
	}
}

alarm[0] = cooldown;
state = live;



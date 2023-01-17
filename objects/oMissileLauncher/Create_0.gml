/// @description
damage = 1;
range = 196;
cooldown = 90;
distance = 8;
burstMax = 8;
burstOffset = 6;
burst = 0;

live = function(){
	var p = oPlayer;
	var mDir = point_direction(x,y,mouse_x,mouse_y);

	x=p.x;
	y=p.y;
	jump(distance,mDir);
	image_angle = mDir;
	
	var m1 = mouse_check_button(mb_left);
	if m1 and alarm[0]<0 and alarm[1]<0 and burst<1{
		burst = burstMax;
	}
	if burst>0 and alarm[1]<0{
		var i = -1;
		repeat(3){
			var m = animEndPart(sSmoke,irandom(359),mDir+(i*25),.8+i*.4,0);
			with(m){
				jump(10,mDir);
			}
		}
		var b = instance_create_depth(x,y,depth,oMissile);
		var d = mDir+irandom_range(-25,25);
		with(b){
			direction = d;
			image_angle = d;
			speed = 4;
			damage = other.damage;
			alarm[0] = other.range/speed;
		}
		with(oCamera){
			jump(2,mDir+180);
		}
		burst--;
		if burst = 0{
			alarm[0] = cooldown;
		}else{
			alarm[1] = burstOffset;
		}
	}
}

state = live;



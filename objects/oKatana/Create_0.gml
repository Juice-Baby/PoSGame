/// @description
damage = 6;
range = 24*6;
cooldown = 45;
cooldownDash = room_speed*2.5;
distance = 0;

spawnConfetti = function(){
	var am = 12;
	var ad = 360/am;
	var a = irandom(ad);
	var i = 0;
	repeat(12){
		var c = instance_create_depth(x,y,25,oConfetti);
		with(c){
			z = 20;
			direction = a+(i*ad);
			speed = 1.6+random(.8);
			friction = speed/45;
			image_angle = irandom(359);
		}
		i++;
	}
}
live = function(){
	var p = oPlayer;
	var mDir = point_direction(x,y,mouse_x,mouse_y);

	x=p.x;
	y=p.y;
	jump(distance,mDir);
	image_angle = mDir;
	
	var m1 = mouse_check_button(mb_left);
	if m1 and alarm[0]<0{
		sprite_index = sKatanaSlash;
		var b = instance_create_depth(x,y,depth,oExplosion);
		with(b){
			image_alpha = 0;
			sprite_index = sKatanaSlash;
			direction = mDir;
			image_angle = mDir;
			damage = other.damage;
			alarm[0] = 2;
		}
		with(oCamera){
			jump(2,mDir);
		}
		alarm[0] = cooldown;
	}
	var m2 = mouse_check_button_released(mb_right);
	if m2 and alarm[1]<0{
		var b = instance_create_depth(x,y,depth,oExplosion);
		with(b){
			image_alpha = 0;
			sprite_index = sKatanaDash;
			direction = mDir;
			image_angle = mDir;
			damage = other.damage;
			image_xscale = (other.range/sprite_width);
			alarm[0] = 2;
		}
		var b = instance_create_depth(x,y,depth,oAnimEnd);
		with(b){
			sprite_index = sKatanaDash;
			direction = mDir;
			image_angle = mDir;
			image_xscale = (other.range/sprite_width);
		}
		with(oPlayer){
			//other.spawnConfetti();
			var d = point_direction(x,y,mouse_x,mouse_y);
			jump(other.range,d);
			other.x = x;
			other.y = y;
			//other.spawnConfetti();
		}
		alarm[1] = cooldownDash;
	}
}

alarm[0] = cooldown;
state = live;



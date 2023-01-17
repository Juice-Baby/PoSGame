/// @description Setup
hsp = 0;
vsp = 0;
moveSpeed = 3;
hpMax = 3;
hp = hpMax;

live = function(){
	var mh = keyboard_check(ord("D"))-keyboard_check(ord("A"));
	var mv = keyboard_check(ord("S"))-keyboard_check(ord("W"));
	var mDir = point_direction(x,y,mouse_x,mouse_y);
	
	hsp = mh*moveSpeed;
	vsp = mv*moveSpeed;
	
	x+=hsp;
	y+=vsp;
	image_angle = mDir;
	
	var s = mouse_wheel_up()-mouse_wheel_down();
	switchWeapon(s);
}

weapons = [oGun,oBombThrower,oMissileLauncher,oKatana];
weaponIndex = 0;
weaponCur = weapons[weaponIndex];

spawnWeapon();

state = live;



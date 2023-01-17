/// @description Smoketrail
var a = 6;
var ad = choose(-a,a);
image_angle+=ad;
direction+=ad;
var m = animEndPart(sSmoke,irandom(359),image_angle+180,0,0);
m.image_index = 0;
var size = .5;
m.image_xscale=size;
m.image_yscale=size;



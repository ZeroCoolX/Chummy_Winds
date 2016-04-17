///scr_enemy_attack_dash()

//set the friction to 0
friction = 0;

var collision_object = Circle;

direction = point_direction(x, y, target.x, target.y);

var attack_dist = point_distance(x, y, target.x, target.y);
var attack_spd = 6;

if(attack_dist < 300){
   attack_spd = 8
}

var hspd =  lengthdir_x(attack_spd,direction);
var vspd = lengthdir_y(attack_spd,direction);

//Horizontal Collisions
if(place_meeting(x+hspd, y, collision_object)){
 while(!place_meeting(x+sign(hspd), y, collision_object)){
     x += sign(hspd);
 }
 hspd = 0;//if there is something right, set hspd to 0
}
x += hspd;

//Vertical Collisions
if(place_meeting(x, y+vspd, collision_object)){
 while(!place_meeting(x, y+sign(vspd), collision_object)){
     y += sign(vspd);
 }
 vspd = 0;
}
y += vspd;

var attack_dist = point_distance(x, y, target.x, target.y);
if(attack_dist < 600){
   alarm[0] = room_speed/2;
   state = scr_enemy_attack_dash;
}

//Don't over accelerate past max spd
if(speed > spd){
   speed = spd;
}

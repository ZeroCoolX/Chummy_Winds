
///scr_enemy_move

//set the friction to 0
friction = 0;

var collision_object = Circle;

direction = point_direction(x, y, Player.x, Player.y);

var hspd =  lengthdir_x(2,direction);
var vspd = lengthdir_y(2,direction);


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

if(point_distance(x, y, Player.x, Player.y) < 500){
   alarm[0] = room_speed/2;
   state = scr_enemy_attack_dash;
}

//Don't over accelerate past max spd
if(speed > spd){
   speed = spd;
}

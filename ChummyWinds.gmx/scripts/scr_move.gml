///scr_move(collision_object, target)

//set the friction to 0
friction = 0;

var collision_object = argument[0];
var target = argument[1];

direction = point_direction(x, y, target.x, target.y);

var hspd =  lengthdir_x(4,direction);
var vspd = lengthdir_y(4,direction);



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

if(point_distance(x, y, target.x, target.y) < 5){
show_debug_message("idle bitch");
    state = scr_idle;
}

//Don't over accelerate past max spd
if(speed > spd){
    speed = spd;
}


///scr_dash_state()
///scr_dash_state()

var collision_object = Wall;
//set the length
len = spd*4;
dir = point_direction(x, y, target.x, target.y);
//Get the speeds of the player
//function to convert a length and direction into a speed
hspd = lengthdir_x(len, dir)*3;
vspd = lengthdir_y(len, dir)*3;
//Horizontal Collisions
if(place_meeting(x+len, y, collision_object)){
while(!place_meeting(x+sign(len), y, collision_object)){
  x += lengthdir_x(len, dir)*3;
}
hspd = 0;//if there is something right, set hspd to 0
}else{
x+= hspd;
}


//Vertical Collisions
if(place_meeting(x, y+len, collision_object)){
while(!place_meeting(x, y+sign(vspd), collision_object)){
    y += lengthdir_y(len, dir)*3;
}
vspd = 0;
}else{
y+= vspd;
}


if (vspd = hspd) {
  state = scr_idle;
}

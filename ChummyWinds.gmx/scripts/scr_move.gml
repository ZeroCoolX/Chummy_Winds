///scr_move(m_speed, fric)

//set the friction to 0
friction = 0;

if(dash_key){
        state = scr_dash_state;
        alarm[0] = room_speed / 6; //frames per second - 30 for now. 8 is arbitrary
}

var collision_object = Wall;

direction = point_direction(x, y, target.x, target.y);

var hspd =  lengthdir_x(10,direction);
var vspd = lengthdir_y(10,direction);



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

if(point_distance(x, y, target.x, target.y) < 32){
    state = scr_idle;
}

//Don't over accelerate past max spd
if(speed > spd){
    speed = spd;
}

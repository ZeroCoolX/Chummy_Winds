///scr_move(m_speed, fric)

//set the friction to 0
friction = 0;
image_speed = .35;
///shape changing
if(Input.shape_one){
    Player.cur_shape = SHAPE_TRIANGLE;
    scr_shape(spr_p_triangle_right, spr_p_triangle_left, spr_p_triangle_up, spr_p_triangle_down);
}
if(Input.shape_two){
    Player.cur_shape = SHAPE_CIRCLE;
    scr_shape(spr_p_circle_right, spr_p_circle_left, spr_p_circle_up, spr_p_circle_down);
}
if(Input.shape_three){
    Player.cur_shape = SHAPE_SQUARE;
    scr_shape(spr_p_square_right, spr_p_square_left, spr_p_square_up, spr_p_square_down);
}

var collision_object = Wall;

direction = point_direction(x, y, target.x, target.y);

hspd =  lengthdir_x(10,direction);
vspd = lengthdir_y(10,direction);
scr_player_face();

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


if(Input.dash_key){
var dir = point_direction(x, y, target.x, target.y);
      if(point_distance(x, y, target.x, target.y) < 150){
       should_dash = 1;
      }else{
       should_dash = 0;
      }
      state = scr_dash_state;
      alarm[0] = room_speed / 6; //frames per second - 30 for now. 8 is arbitrary
}

if(point_distance(x, y, target.x, target.y) < 32){
    state = scr_idle;
}

//Don't over accelerate past max spd
if(speed > spd){
    speed = spd;
}

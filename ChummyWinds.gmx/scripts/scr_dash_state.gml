///scr_dash_state()

var collision_object = Wall;

 //set the length
 len = spd*10;
 if(should_dash > 0){
   dash_dir = point_direction(x, y, target.x, target.y);
   should_dash = -1;
 }else if(should_dash == 0){
   dash_dir = point_direction(x, y, target.x, target.y);
 }



 //Get the speeds of the player
 //function to convert a length and direction into a speed
 hspd = lengthdir_x(len, dash_dir)*3;
 vspd = lengthdir_y(len, dash_dir)*3;
 
 //Horizontal Collisions
 if(place_meeting(x+hspd, y, collision_object)){
     while(!place_meeting(x+sign(len), y, collision_object)){
       x += sign(hspd);//lengthdir_x(len, dir)*3;
     }
     hspd = -(hspd/2);//if there is something right, set hspd to 0
 }
 x+= hspd;
 
 
 
 //Vertical Collisions
 if(place_meeting(x, y+vspd, collision_object)){
     while(!place_meeting(x, y+sign(len), collision_object)){
         y += sign(vspd); //lengthdir_y(len, dir)*3;
     }
     vspd = -(vspd/2);
 }
 y+= vspd;


if (vspd = hspd) {
state = scr_idle;
}

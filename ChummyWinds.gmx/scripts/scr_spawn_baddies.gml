
///scr_spawn_baddies(baddie_count)
var baddie_count = argument[0];
//Create Enemies


for(var i = 0; i < baddie_count; i++){

       var xr = 0;
       var yr = 0;
  var type = irandom_range(1, 3);
  while(true){
       right_x = irandom_range(room_width/2 + 400 , room_width);
       down_y = irandom_range(room_height/2 + 400, room_height);
       left_x = irandom_range(room_width/2 - 400 , room_width);
       up_y = irandom_range(room_height/2 - 400, room_height);
       
       var coord_x = irandom_range(0,1);
       var coord_y = irandom_range(0,1);
       
       
       if(coord_x == 0){
            xr = right_x;
       }else{
            xr = left_x;
       }
       
       if(coord_y == 0){
            yr = down_y;
       }else{
            yr = up_y;
       }
       
       if(!place_meeting(xr, yr, Wall) && !place_meeting(xr, yr, Player)){
           break;
       }
  }
  
  
  if (type == 1){
      instance_create(xr, yr, Triangle);
  } else if (type == 2){
      instance_create(xr, yr, Square);
  } else if (type == 3){
      instance_create(xr, yr, Circle);
  }
}

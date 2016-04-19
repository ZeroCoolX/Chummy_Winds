
///scr_spawn_baddies(baddie_count)
var baddie_count = argument[0];
//Create Enemies
for(var i = 0; i < baddie_count; i++){
  var type = irandom_range(1, 3);
  while(true){
       xr = irandom_range(10, room_width);
       yr = irandom_range(10, room_height);
       if(!place_meeting(xr, yr, Wall) && !place_meeting(xr, yr, Player) &&
       !place_meeting(xr+350, yr, Player) &&
       !place_meeting(xr-350, yr, Player) &&
       !place_meeting(xr, yr+350, Player) &&
       !place_meeting(xr, yr-350, Player)){
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

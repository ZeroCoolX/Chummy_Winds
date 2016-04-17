///scr_hurt_player()
if(state != scr_player_hurt_state){
   if(instance_exists(PlayerStats)){
       PlayerStats.hp -= 1;//hurt the player
   }
   alarm[2] = room_speed/6;
   state = scr_player_hurt_state;
}
   scr_player_face();//change them back

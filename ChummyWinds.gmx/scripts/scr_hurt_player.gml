///scr_hurt_player()
if(state != scr_player_hurt_state){
   if(instance_exists(PlayerStats)){
       PlayerStats.hp -= 1;//hurt the player
   }
   if(PlayerStats.hp > 0) {
       alarm[2] = room_speed/6;
       state = scr_player_hurt_state;
       scr_player_face();//change them back
   } else {
        sprite_index = spr_player_death;
        instance_create(x, y, Trap);
        state = scr_dead;
   }
}


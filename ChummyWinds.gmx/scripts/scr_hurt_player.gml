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
        audio_play_sound(snd_death_lose,92, false);
        dead = true;
        sprite_index = spr_player_death;
        image_index = 0;
        instance_create(x, y, Trap);
        state = scr_dead;
        image_speed = .2;
   }
}


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
        if(audio_is_playing(snd_music_lvl_1)){
            audio_stop_sound(snd_music_lvl_1);
        }else if(audio_is_playing(snd_music_lvl_2)){
            audio_stop_sound(snd_music_lvl_2);
        } if(audio_is_playing(snd_music_lvl_3)){
            audio_stop_sound(snd_music_lvl_3);
        }
        audio_play_sound(snd_death_lose,92, false);
        
        with(BaddieParent){
    instance_destroy();
}
with(Circle){
    instance_destroy();
}
with(Square){
    instance_destroy();
}
with(Triangle){
    instance_destroy();
}
        
        alarm[5] = 100;
        dead = true;
        sprite_index = spr_player_death;
        image_index = 0;
        instance_create(x, y, Trap);
        state = scr_dead;
        image_speed = .2;
        //if(instance_exists(BaddieParent)){

        //}
   }
}


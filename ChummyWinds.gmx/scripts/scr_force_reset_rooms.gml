///scr_force_reset_room()
if(room_exists(rm_one) && room == rm_one){
show_debug_message("resetting 1");
    if(audio_is_playing(snd_music_menu)){
        audio_stop_sound(snd_music_menu);
        audio_play_sound(snd_music_lvl_1, 102, true);
    }
        //manually run rm_one's create code to "reset" the presistent room
        //this determines how many baddies can be in the room at one point
        PlayerStats.allowed_baddies = 5;
        scr_spawn_baddies(5);
        PlayerStats.kills = 10;
        //health
        PlayerStats.hp = 10;
        PlayerStats.maxhp = 10;
        //stamina
        PlayerStats.stamina = 20;
        PlayerStats.maxstamina = 20;
        draw_set_colour(c_white)
        PlayerStats.previous_room = room
        if(instance_exists(StageClear)){
            with(StageClear){
                instance_destroy();
            }
        }
}else if(room_exists(rm_two) && room == rm_two){
    show_debug_message("resetting 2");
        if(audio_is_playing(snd_music_lvl_1)){
        audio_stop_sound(snd_music_lvl_1);
        audio_play_sound(snd_music_lvl_2, 103, true);
    }
        //manually run rm_one's create code to "reset" the presistent room
        //this determines how many baddies can be in the room at one point
        PlayerStats.allowed_baddies = 8;
        scr_spawn_baddies(8);
        PlayerStats.kills = 15;
        //health
        PlayerStats.hp = 10;
        PlayerStats.maxhp = 10;
        //stamina
        PlayerStats.stamina = 20;
        PlayerStats.maxstamina = 20;
        draw_set_colour(c_white)
        PlayerStats.previous_room = room
        if(instance_exists(StageClear)){
            with(StageClear){
                instance_destroy();
            }
        }
}else if(room_exists(rm_three) && room == rm_three){
    show_debug_message("resetting 3");
            if(audio_is_playing(snd_music_lvl_2)){
        audio_stop_sound(snd_music_lvl_2);
        audio_play_sound(snd_music_lvl_3, 103, true);
    }
        //manually run rm_one's create code to "reset" the presistent room
        //this determines how many baddies can be in the room at one point
        PlayerStats.allowed_baddies = 10;
        scr_spawn_baddies(10);
        PlayerStats.kills = 20;
        //health
        PlayerStats.hp = 10;
        PlayerStats.maxhp = 10;
        //stamina
        PlayerStats.stamina = 20;
        PlayerStats.maxstamina = 20;
        draw_set_colour(c_white)
        PlayerStats.previous_room = room
        if(instance_exists(StageClear)){
            with(StageClear){
                instance_destroy();
            }
        }
}


global.mode = 1;
audio_stop_all();
audio_play_sound(mus_ambient,1,true);
instance_destroy(awakened);
instance_destroy(inquisitive);
instance_destroy(input_line);
instance_create_depth(-10,-10,-20,black);
instance_destroy(select_box);
instance_destroy(self);
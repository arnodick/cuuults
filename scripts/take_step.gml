move_timer = true;
move_timer_count = move_timer_max*move_timer_mult;

audio_sound_pitch(sndBloop, step_count);
audio_play_sound(sndBloop, 1, false);
if move_timer_mult > 1
{
    move_timer_mult -= 1;
}

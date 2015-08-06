//halts controls and shakes screen when you hit a wall
var cell_next = argument0;
var shake_factor = 4*argument1;   // how widely screen should shake if bumping into solid object
var shake_timer = 15*argument1; //how long screen shakes for/how long player can't move for

move_timer_start(shake_timer, 1);

screen_shake(shake_timer, shake_factor);

/*
if (cell_next.sound_step != -1)
{
    audio_play_sound(cell_next.sound_step, 1, false); // maybe we want this here? so everything makes noises?
}
*/
//move_stopped();

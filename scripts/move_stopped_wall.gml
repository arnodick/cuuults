//halts controls and shakes screen when you hit a wall
var shake_factor = 4*argument0;   // how widely screen should shake if bumping into solid object
var shake_timer = 15*argument0; //how long screen shakes for/how long player can't move for
screen_shake(shake_timer, shake_factor);
//audio_play_sound(sndBump, 1, false); // TODO: put this into move_timer_inc script
move_timer_start(move_timer_max, 1);

//move_timer_start(shake_timer, 1);

move_stopped();


//halts controls and shakes screen when you hit a wall
var shake_factor = 4*argument0;   // how widely screen should shake if bumping into solid object
var shake_timer = 15*argument0; //how long screen shakes for/how long player can't move for

move_timer_start(shake_timer, 1);

screen_shake(shake_timer, shake_factor);

move_stopped();

stopped_wall = true;

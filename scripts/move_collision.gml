var x_dest = argument0;
var y_dest = argument1;
var running = argument2;
var shake_factor = 4*argument3;   // how widely screen should shake if bumping into solid object
var shake_timer = 15*argument3; //how long screen shakes for/how long player can't move for

// wraps moving object to other side of map if it steps out of bounds
if (x_dest >= (oGame.r_width))
{
    x_dest = 0;
}
else if (x_dest < 0)
{
    x_dest = (oGame.r_width - 1);
}

if (y_dest >= oGame.r_height)
{
    y_dest = 0;
}
else if (y_dest < 0)
{
    y_dest = (oGame.r_height - 1);
}

var cell_next = oGame.map_update[x_dest, y_dest]; // temp var for destination cell contents
var cant_move = cell_next.solid;

if (cant_move == false)
{
    if (object_index == oPlayer)
    {
        if (running == true)
        {
            if step_count < 5
            {
                step_count += 1;
            }
            audio_sound_pitch(sndBloop, step_count);
            audio_play_sound(sndBloop, 1, false);
        }
        else
        {
            audio_play_sound(cell_next.sound_step, 1, false);
        }
    }
    oGame.map_update[x, y] = oGame.map[x, y];   // swaps the current cell on the active grid for its sister in the terrain grid
    x = x_dest;   // sets your position to the destination cell
    y = y_dest;   // but we still haven't actually moved you into the active grid yet!!
}
else
{
    if (object_index == oPlayer)
    {
        if (running == true)
        {
            if (step_count > 4)
            {
                var cell_hit = oGame.map_update[argument0, argument1]
                oGame.map[argument0, argument1] = instance_create(argument0, argument1, cell_hit.dead);
                oGame.map_update[argument0, argument1] = oGame.map[argument0, argument1]; // TODO: this code makes the game crash when you kill yourself for some reason?
                audio_play_sound(cell_hit.dead_sound, 1, false);
                with (cell_hit)
                {
                    instance_destroy();
                }
            }
        }
        move_timer = true;
        move_timer_count = shake_timer;
        step_count = 0;
        screen_shake(shake_timer, shake_factor);
        audio_play_sound(sndBump, 1, false);
    }
}
return cant_move;

var cell_next = oGame.map_update[argument0, argument1]; // temp var for destination cell contents
var cant_move = cell_next.solid;

if (object_index == oPlayer)
{
    if cant_move == false
    {
        audio_play_sound(cell_next.sound_step, 1, false);
        oGame.map_update[x, y] = oGame.map[x, y];
        x = argument0;
        y = argument1;
    }
    else
    {
        screen_shake(oGame.shake_count_max_bump, 4);
        audio_play_sound(sndBump, 1, false);
        //TODO: make these inputs into the movement function, so anything can make noise, shake on impact
        move_timer = true;
        move_timer_count = oGame.shake_count_max_bump;
        step_count = 0;
    }
}
else
{
    if check_OOB(argument0, argument1, oGame.r_width - 2, oGame.r_height - 2) == -1    // stops creatures from walking off map
                                            // TODO: make sure this doesn't screw with player moving off screen, in case this is amalgamated into player move functions?
                                            //      just do a check_OOB == -1 OR object_index == oPlayer?
    {
        if cant_move == false // if destination cell is not solid, move into it
        {
            oGame.map_update[x, y] = oGame.map[x, y];   // swaps the current cell on the active grid for its sister in the terrain grid
            x = argument0;   // sets your position to the destination cell
            y = argument1;   // but we still haven't actually moved you into the active grid yet!!
        }
        oGame.map_update[x, y] = id;    // NOW it updates the active cell with you, whether you moved or not
    }

}
return cant_move;

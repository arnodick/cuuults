var cell_next = oGame.map_update[pos_check[0], pos_check[1]]; // temp var for destination cell contents

if cell_next.solid == false // if destination cell is not solid, move into it
{
    oGame.map_update[x, y] = oGame.map[x, y];   // swaps the current cell on the active grid for its sister in the terrain grid
    x = pos_check[0];   // sets your position to the destination cell
    y = pos_check[1];   // but we still haven't actually moved you into the active grid yet!!
}
else
{
    move_halt(move_timer_max);  // if you bump into a wall, no more moving for you
}
oGame.map_update[x, y] = id;    // updates the active grid with your cell, whether you moved or not

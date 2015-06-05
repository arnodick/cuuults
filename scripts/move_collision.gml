var x_dest = argument0;
var y_dest = argument1;

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
    oGame.map_update[x, y] = oGame.map[x, y];   // swaps the current cell on the active grid for its sister in the terrain grid
    x = x_dest;   // sets your position to the destination cell
    y = y_dest;   // but we still haven't actually moved you into the active grid yet!!
}
/*
else
{
    
}
*/
return cell_next;

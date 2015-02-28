//var cell_current = oGame.map_update[x, y];

if move_timer == false
{
    
    var dir = irandom(4); // sets the direction of us to 1 of 4 directions
                        // TODO: make this more direct, less variables
    //var pos_check[2] = 0;
    switch(dir) // sets the position to checked based on our direction
    {
    case 0:
        pos_check[0] = x - move_distance;
        move_rand_start();
    break;
    case 1:
        pos_check[0] = x + move_distance;
        move_rand_start();
    break;
    case 2:
        pos_check[1] = y - move_distance;
        move_rand_start();
    break;
    case 3:
        pos_check[1] = y + move_distance;
        move_rand_start();
    break;
    }
    
    var cell_next = oGame.map_update[pos_check[0], pos_check[1]]; // assigns a variable to the space we were determined to move by rand

    if cell_next.solid == false // check the next
    {
        oGame.map_update[x, y] = oGame.map[x, y];   // makes your current positionon the active grid equal the terrain grid
        x = pos_check[0];   // sets your position to the spot you were checking to be moved to
        y = pos_check[1];
    }
    else
    {
        move_rand_start();
    }
    oGame.map_update[x, y] = id;
}
else
{
    move_stopped();
}

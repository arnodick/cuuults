var cell_current = oGame.map_update[x, y];

if move_timer == false
{
    dir = irandom(4);
    switch(dir)
    {
    case 0:
        pos_check[0] -= move_distance;
        move_rand_start();
    break;
    case 1:
        pos_check[0] += move_distance;
        move_rand_start();
    break;
    case 2:
        pos_check[1] -= move_distance;
        move_rand_start();
    break;
    case 3:
        pos_check[1] += move_distance;
        move_rand_start();
    break;
    default:
            step_stop();
    break;
    }
    
    var cell_next = oGame.map_update[pos_check[0], pos_check[1]];

    if cell_next.solid == false
    {
        oGame.map_update[x, y] = oGame.map[x, y];
        x = pos_check[0];
        y = pos_check[1];
        oGame.map_update[x, y] = id;
    }
    else
    {
        move_rand_start();
    }
}
else
{
    if move_timer_count > 0
    {
        move_timer_count -= 1;
    }
    else
    {
        move_timer = false;
        // put shift speed multipler here if shift is pressed! decrease move_timer_ma or it's equivalent
    }
}
//var cell_current = oGame.map_update[x, y];

if move_timer == false
{
    if      cell_current_left.object_index   == oGrass
    {
        dir = 0;
    }
    else if cell_current_right.object_index  == oGrass
    {
        dir = 1;
    }
    else if cell_current_top.object_index    == oGrass
    {
        dir = 2;
    }
    else if cell_current_bot.object_index    == oGrass
    {
        dir = 3;
    }
    else
    {
        dir = irandom(4);
    }
    
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
            move_stop();
    break;
    }
    
    var cell_next = oGame.map_update[pos_check[0], pos_check[1]];

    if cell_next.solid == false
    {
        oGame.map_update[x, y] = oGame.map[x, y];
        x = pos_check[0];
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

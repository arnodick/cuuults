//var cell_current = oGame.map_update[x, y];
var nearest_object = instance_nearest(x, y, argument0);
var dir = 0;
if move_timer == false
{
    if (floor(nearest_object.x) < x)
    {
        dir = 0;
    }
    if (floor(nearest_object.x) > x)
    {
        dir = 1;
    }
    if (floor(nearest_object.y) < y)
    {
        dir = 2;
    }
    if (floor(nearest_object.y) > y)
    {
        dir = 3;
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
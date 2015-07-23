// TODO: rename this to move_at_object? or just generalize to move_coord and input x, y instead of object

var x_pos = x, y_pos = y;
if instance_exists(argument0)
// TODO: randomize this a bit? so that they don't beeline, give a bit of variation
// TODO: do we need floor here?
// TODO: for pathfdinding, check most direct square first, then next least, then last least. First one to be non-solid gets taken.
{
    var nearest_object = instance_nearest(x, y, argument0), obj_x = nearest_object.x, obj_y = nearest_object.y;

    if (floor(obj_x) < x)
    {
        move_dir[0] = -move_distance;
        // TODO: give them memory, so they will know if something was a wall
        /*
        if ( floor(obj_y) == y )
        {
            y_pos = y + (irandom(2) - 1);   // this gives you a 1/3 chance of actually getting to the target when next to it
                                            // with 50/50 chance on < or >, we never actually get to the target, bc we are forced to step to the side
        }
        */
    }
    if (floor(obj_x) > x)
    {
        move_dir[0] = move_distance;
        /*
        if ( floor(obj_y) == y )
        {
            y_pos = y + (irandom(2) - 1);   // with 50/50 chance on < or >, we never actually get to the target, bc we are forced to step to the side
        }
        */
    }
    if (floor(obj_y) < y)
    {
        move_dir[1] = -move_distance;
        /*
        if ( floor(obj_x) == x )
        {
            x_pos = x + (irandom(2) - 1);
        }
        */
    }
    if (floor(obj_y) > y)
    {
        move_dir[1] = move_distance;
        /*
        if ( floor(obj_x) == x )
        {
            x_pos = x + (irandom(2) - 1);
        }
        */
    }
}
var cant_move = move_collision(x + move_dir[0], y + move_dir[1]).solid;
// TODO: MAKE THIS SCRIPT MORE ROBUST AT PATHFINDING!
//      if it can't go forward, try a bit to the left or right. if not that, then random?
//      current version a bit weird
if (cant_move == true)
{
    move_rand();
}
else
{
    move_timer_start(move_speed, 1);  //conceptually comes after actual movement, but needs to be here bc of breaks in swithc below
}

// TODO: rename this to move_at_object? or just generalize to move_coord and input x, y instead of object
move_halt(move_timer_max);  //conceptually comes after actual movement, but needs to be here bc of breaks in swithc below
var x_pos = x, y_pos = y;
if instance_exists(argument0)
// TODO: randomize this a bit? so that they don't beeline, give a bit of variation
{
    var nearest_object = instance_nearest(x, y, argument0);

    if (floor(nearest_object.x) < x)
    {
        x_pos = x - move_distance;
    }
    if (floor(nearest_object.x) > x)
    {
        x_pos = x + move_distance;
    }
    if (floor(nearest_object.y) < y)
    {
        y_pos = y - move_distance;
    }
    if (floor(nearest_object.y) > y)
    {
        y_pos = y + move_distance;
    }

}
if move_collision(x_pos, y_pos) == true
// TODO: MAKE THIS SCRIPT MORE ROBUST AT PATHFINDING!
//      if it can't go forward, try a bit to the left or right. if not that, then random?
//      current version a bit weird
{
    move_rand();
    /*
    if move_collision(x_pos, y_pos - 1) == true
    {
        if move_collision(x_pos, y_pos + 1) == true
        {
            move_rand();
        }
    }
    */
}

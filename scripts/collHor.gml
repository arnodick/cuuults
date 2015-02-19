if point_in_rectangle(coll_horz[0], coll_horz[1], argument0.wall[0] - speed, argument0.wall[1], argument0.wall[2], argument0.wall[3]) and argument0.x < x
{
    return true;
}
else if point_in_rectangle(coll_horz[0], coll_horz[1], argument0.wall[0], argument0.wall[1], argument0.wall[2] + speed, argument0.wall[3]) and argument0.x > x
{
    return true;
}
else
{
    return false;
}
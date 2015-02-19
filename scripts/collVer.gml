if point_in_rectangle(coll_vert[0], coll_vert[1], argument0.wall[0], argument0.wall[1], argument0.wall[2], argument0.wall[3] + speed) and argument0.y > y
{
    return true;
}
else if point_in_rectangle(coll_vert[0], coll_vert[1], argument0.wall[0], argument0.wall[1] - speed, argument0.wall[2], argument0.wall[3]) and argument0.y < y
{
    return true;
}
else
{
    return false;
}
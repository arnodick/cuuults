//check to see if the object is out of bounds of the map. If they are, generate a new level.
var side = -1;
if argument0.x < 1
{
    side = 0;
}
else if argument0.x > 64
{
    side = 1;
}
if argument0.y < 1
{
    side = 2;
}
else if argument0.y > 48
{
    side = 3;
}
return side;

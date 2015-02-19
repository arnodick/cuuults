//check to see if the player is out of bounds of the map. If they are, generate a new level.
if oPlayer.x < 1
{
    generate = true;
    oPlayer.x = 64;
}
else if oPlayer.x > 64
{
    generate = true;
    oPlayer.x = 1;
}
if oPlayer.y < 1
{
    generate = true;
    oPlayer.y = 48;
}
else if oPlayer.y > 48
{
    generate = true;
    oPlayer.y = 1;
}

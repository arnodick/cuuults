//check to see if the player is out of bounds of the map. If they are, generate a new level.
if x < 1
{
    oGame.generate = true;
    x = 64;
}
else if x > 64
{
    oGame.generate = true;
    x = 1;
}
if y < 1
{
    oGame.generate = true;
    y = 48;
}
else if y > 48
{
    oGame.generate = true;
    y = 1;
}

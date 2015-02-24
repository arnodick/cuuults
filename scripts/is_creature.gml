if hp == 0
{
    instance_destroy();
    oGame.map[x, y] = instance_create(x, y, dead);
}

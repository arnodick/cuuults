var cell_current = oGame.map[x, y];

if (cell_current.object_index == oGrass)
{
    if (cell_current.char == '/')
    {
        audio_play_sound(sndSwish, 1, false);
        cell_current.char = '-';
    }
}
if (cell_current.object_index == oBlood)
{
    bloody = true;
}
bloody_check();
if hp == 0
{
    instance_destroy();
    oGame.map[x, y] = instance_create(x, y, dead);
}

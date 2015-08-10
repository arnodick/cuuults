var cell_current = oGame.map[x, y];

if (instance_exists(oGrass))
{
// TODO: put this in movement code?
if (cell_current.object_index == oGrass)
{
    /*
    if (cell_current.char == '/')
    {
        audio_play_sound(sndSwish, 1, false);
        cell_current.char = '-';
    }
    */
    //audio_play_sound(sndSwish, 1, false);
    audio_play_sound_at(sndSwish, x, y, 0, 6, 12, 1, false, 1);
    oGame.map[x, y] = instance_create(x, y, oStamped);
    with (cell_current)
    {
        instance_destroy();
    }
    cell_current = oGame.map[x, y];
}
}
if (cell_current.object_index == oBlood)
{
    bloody = true;
}
bloody_check();

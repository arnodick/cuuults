if (instance_exists(carrying))
{
    if (carry == true)
    {
        with (carrying)
        {
            move_value = move_value_init;
            solid = true;
            sound_step = sndBump;
        }
        carry = false;
        carrying = 0;   // will this cause problems? make me carry something, like whatever the 1st instance is?
    }
}

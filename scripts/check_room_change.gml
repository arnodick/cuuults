// this script checks if the player is out of bounds of the map
// if they are, it transposes them to the other side of the screen and generates a new map
if instance_exists(oPlayer)
{
    switch(check_OOB(oPlayer.x, oPlayer.y, r_width - 2, r_height - 2))
    {
        case -1:                // not OOB, do nothing
        {
            break;
        }
        case 0:                 // exited left side
        {
            generate = true;
            oPlayer.x = 64;
            break;
        }
        case 1:                 // exited right side
        {
            generate = true;
            oPlayer.x = 1;
            break;
        }
        case 2:                 // exited top side
        {
            generate = true;
            oPlayer.y = 48;
            break;
        }
        case 3:                 // exited bottom side
        {
            generate = true;
            oPlayer.y = 1;
            break;
        }
    }
}

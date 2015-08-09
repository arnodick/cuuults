terrain_start = asset_get_index("oSpace");
terrain_end = asset_get_index("oStamped") - 1;

space = instance_create(1, 1, oSpace);

// TODO: add creatures, items, etc.

// constants for move input
//basically just nmemonic so you don't have to remember 0 = key movement, 1 = rand, etc
enum move_types
{
    key,
    rand,
    obj,
    proj
}

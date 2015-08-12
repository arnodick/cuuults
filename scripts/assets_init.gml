space = instance_create(1, 1, oSpace);

things_start = asset_get_index("oPlayer");
things_end = asset_get_index("oBlood");
things_amount = things_end - things_start + 1;

creatures_start = asset_get_index("oPlayer");
creatures_end = asset_get_index("oCultist");
creatures_amount = creatures_end - creatures_start + 1;

items_start = asset_get_index("oRock");
items_end = asset_get_index("oRock");
items_amount = items_end - items_start + 1;

terrain_start = asset_get_index("oSpace");
terrain_end = asset_get_index("oStamped") - 1;
terrain_amount = terrain_end - terrain_start + 1;

// TODO: add misc? ie blood, stamped

// constants for move input
// basically just nmemonic so you don't have to remember 0 = key movement, 1 = rand, etc
enum move_types
{
    key,
    rand,
    obj,
    proj
}

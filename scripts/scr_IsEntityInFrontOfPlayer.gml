/// scr_InFrontOfPlayer(player, entity)

player = argument0;
entity = argument1;

return collision_rectangle(player.x - (2 * player.entityFacing), player.y - (6 * player.entityFacing), player.x + (12 * player.entityFacing), player.y + (12 * player.entityFacing), entity, false, true) != noone;

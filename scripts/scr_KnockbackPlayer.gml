///scr_KnockbackPlayer(player, knockbackX, knockbackY)

player = argument0;
knockbackX = argument1;
knockbackY = argument2;
    
// Stun the player
scr_StunPlayer(player);

// Fling the player opposite the direction they are facing
player.vx = -knockbackX * player.entityFacing;
player.vy = -knockbackY;
player.y -= 1;
player.onGround = false;

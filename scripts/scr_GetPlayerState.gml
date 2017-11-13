///scr_GetPlayerState(player)

player = argument0;
var newState = PLAYER_STATE_IDLE;

// Get Key states
var kLeft, kRight, kJump;
kLeft        = keyboard_check(player.KEY_LIST[KEY_LEFT]);
kRight       = keyboard_check(player.KEY_LIST[KEY_RIGHT]);
kJump       = keyboard_check_pressed(player.KEY_LIST[KEY_JUMP]);

if(player.onGround && (abs(player.vx) > 0) && !player.sticking) newState = PLAYER_STATE_RUNNING;
if((player.onGround || player.sticking) && kJump) newState = PLAYER_STATE_JUMP_INIT;
if(!player.onGround && player.vy < 0 && !player.sticking) newState = PLAYER_STATE_JUMP_BEGIN;
if(!player.onGround && player.vy >= -1 && player.vy <= 1 && !player.sticking) newState = PLAYER_STATE_JUMP_MID;
if(!player.onGround && player.vy > 1 && !player.sticking) newState = PLAYER_STATE_JUMP_FALLING;
if( ( (player.cLeft && kLeft) || (player.cRight && kRight) ) && !player.onGround && player.vy >= 0) newState = PLAYER_STATE_CLINGING;
if(player.playerInFlight) newState = PLAYER_STATE_FLYING;
if(player.playerStunTimer < player.playerStunTimerMax && !player.onGround) newState = PLAYER_STATE_HURT;
if(player.playerStunTimer < player.playerStunTimerMax && player.onGround) newState = PLAYER_STATE_STUNNED;


// attacking stuff, move later
if(player.attackTimer > 0) newState = PLAYER_STATE_ATTACKING;

return newState;

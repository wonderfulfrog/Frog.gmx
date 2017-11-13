///scr_DrawPlayer(player)

player = argument0;

// Make sure the xScale is always the same as the facing direction
// Otherwise we get the Paper Mario Effect (tm)
if(sign(xScale) != sign(player.entityFacing)) {
    xScale *= -1;
}

// Tween back to normal
xScale = Approach(xScale, player.entityFacing, 0.05);
yScale = Approach(yScale, 1, 0.05);


if(player.playerState == player.PLAYER_STATE_IDLE) {
    player.sprite_index = player.SPR_PLAYER_IDLE;
    player.image_speed = player.SPR_IDLE_SPEED;
}

if(player.playerState == player.PLAYER_STATE_RUNNING) {
    player.sprite_index = player.SPR_PLAYER_RUN;
    player.image_speed = player.SPR_RUNNING_SPEED;
}

if(playerState == PLAYER_STATE_JUMP_INIT) {
    xScale = player.entityFacing * 0.7;
    yScale = 1.4;
}

if(playerState == PLAYER_STATE_JUMP_BEGIN) {
    sprite_index = SPR_PLAYER_JUMP;
    image_speed = SPR_JUMPING_SPEED;
    image_index = 0;
}

if(playerState == PLAYER_STATE_JUMP_MID) {
    sprite_index = SPR_PLAYER_JUMP;
    image_speed = SPR_JUMPING_SPEED;
    image_index = 1;
}

if(playerState == PLAYER_STATE_JUMP_FALLING) {
    sprite_index = SPR_PLAYER_JUMP;
    image_speed = SPR_JUMPING_SPEED;
    image_index = 2;
}

if(playerState == PLAYER_STATE_CLINGING) {
    sprite_index = SPR_PLAYER_CLINGING;
    image_speed = SPR_CLINGING_SPEED;
    image_index = 0;
}

if(playerState == PLAYER_STATE_FLYING) {
    sprite_index = SPR_PLAYER_FLYING;
    image_speed = SPR_PLAYER_FLYING_SPEED;
    image_index = 0;
}

if(playerState == PLAYER_STATE_HURT) {
    sprite_index = SPR_PLAYER_HURT;
    image_speed = SPR_PLAYER_HURT_SPEED;
    image_index = 0;
    xScale *= -1;
}

if(playerState == PLAYER_STATE_STUNNED) {
    sprite_index = SPR_PLAYER_STUNNED;
    image_speed = SPR_PLAYER_STUNNED_SPEED;
    image_index = 0;
}

if(playerState == PLAYER_STATE_ATTACKING) {
    sprite_index = sprPlayer1MeleeAttack;
    image_speed = 0.3;
}

draw_sprite_ext(player.sprite_index, player.image_index, player.x, player.y, xScale, yScale, 0, c_white, player.image_alpha);

if(player.activePlayer) {
    draw_sprite(sprActivePlayerArrow, 0, player.x, player.y);
}
//scr_draw_sprite_skew_ext(player.sprite_index, player.image_index, player.x, player.y, player.image_xscale, player.image_yscale, player.image_angle, player.image_blend, player.image_alpha, 0, 0);

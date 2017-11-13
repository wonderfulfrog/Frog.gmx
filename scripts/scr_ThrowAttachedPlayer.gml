///scr_ThrowAttachedPlayer(playerThrowing, thrownPlayer, thrownPlayerVx, thrownPlayerVy)

playerThrowing = argument0;
thrownPlayer = argument1;
thrownPlayerVx = argument2;
thrownPlayerVy = argument3;

thrownPlayer.playerCanMove = false;
thrownPlayer.playerInFlight = true;

thrownPlayer.cLeft = false;
thrownPlayer.cRight = false;

scr_ThrowAttachedEntity(playerThrowing, thrownPlayer, thrownPlayerVx, thrownPlayerVy);

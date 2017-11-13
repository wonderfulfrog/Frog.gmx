///scr_PickupPlayer(playerPickingUp, playerBeingPickedUp)

playerPickingUp = argument0;
playerBeingPickedUp = argument1;

playerBeingPickedUp.playerCanMove = false;

scr_PickupEntity(playerPickingUp, playerBeingPickedUp);
scr_StopPlayer(playerBeingPickedUp);

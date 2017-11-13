/// scr_RegisterPlayer(player)

player = argument0;
playerNum = player.playerNum;

global.gameController.listOfPlayers[playerNum] = player.id;
global.gameController.totalPlayers += 1;

/// scr_SetActivePlayer(whichPlayer)

whichPlayer = argument0;

if(whichPlayer >= global.gameController.totalPlayers) whichPlayer = 0;
global.gameController.currPlayer = whichPlayer;

for(var i = 0; i < global.gameController.totalPlayers; i++) {
    scr_StopPlayer(global.gameController.listOfPlayers[i]);
    global.gameController.listOfPlayers[i].activePlayer = false;
}

// Todo: less hacky pls
var MASTER_KEYS = global.gameController.listOfPlayers[0].KEY_LIST;

global.gameController.listOfPlayers[whichPlayer].activePlayer = true;
global.gameController.listOfPlayers[whichPlayer].KEY_LIST = MASTER_KEYS;

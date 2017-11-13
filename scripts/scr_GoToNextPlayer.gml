nextPlayer = global.gameController.currPlayer + 1;
if(nextPlayer >= global.gameController.totalPlayers) nextPlayer = 0;

if(!scr_IsPlayerBusy(global.gameController.listOfPlayers[nextPlayer])) {
    scr_SetActivePlayer(nextPlayer);
}

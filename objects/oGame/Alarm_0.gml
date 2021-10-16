// We only want to go to the next game if we're currently playing a game.
// This check stops us from going from rGameOver to rGame.
if (room == rGame) room_goto(rGame);
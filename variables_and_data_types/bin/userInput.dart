 // this program asks where the user wants to place an x or o. These inputs are stored in a list of lists

 import 'dart:io';

 void main () {
    // initial empty game board
    List<List<String>> gameBoard = List.generate(3, (_) => List.generate(3, (_)=> " "));
    var currentPlayer = 1;

    // while loop to keep adding moves to the board
    while(true){
        drawBoard(gameBoard, currentPlayer);
        print(gameBoard);

        stdout.write('Would you like to continue? Y/N:  ');
        String answer = stdin.readLineSync()!.toLowerCase();
        if (answer == 'n') {
            break;
        } else {
            currentPlayer == 1? currentPlayer = 2: currentPlayer = 1;
            continue;
        }
    }
    
 }


 // function to draw the board 
 // current gameboard and the player as arguments
 // 1 is X and 2 is O

 List<List<String>> drawBoard(List<List<String>> board, int currentPlayer) {
    var player;
    currentPlayer == 1 ? player = "X" : player = 'O';
    stdout.write('Choose a coordinate to play, rows then columns: ');
    List boardChoice = stdin.readLineSync()!.split('');
    board[int.parse(boardChoice[0]) -1][int.parse(boardChoice[1])-1] = player;
    return board;
 }
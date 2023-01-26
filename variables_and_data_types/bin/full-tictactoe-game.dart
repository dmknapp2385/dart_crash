///Program that allows two users to play tic tac toe
///players are asked to give the location of the play with row,column coordiantes
///computer displays gamebaord after each move


import 'dart:io';


// variable to hold the winner
String? winner;

void main() {
    //initial empty gameboard
    List<List<String>> gameBoard = List.generate(3, (_) => List.generate(3, (_) => ' '));
    
    // initialize first player as 1 (X);
    int currentPlayer = 1;
    
    // print the current game board
    printGameBoard(gameBoard);

    // while loop to keep the game going until winner
    while(true) {
        //get current players play
        getInput(gameBoard, currentPlayer);
        //check to see if winner
        if (checkWinner(gameBoard)) {
            break;
        } else {
            //change players
            currentPlayer == 1? currentPlayer = 2: currentPlayer = 1;
        }
        //print the updated board
        printGameBoard(gameBoard);
    }
}

// function to get user input with the board and currently player passed as arguments
// returns an update gameboard with play
List<List<String>> getInput(List<List<String>> board, int currentPlayer) {
    // local variable to hold X or ) for current player
    var symbol;
    currentPlayer == 1? symbol = 'X': symbol = 'O';
    //get input from user
    stdout.write('Choose a coordinate to play. Type in row/column coordinates, no space: ');
    List location = stdin.readLineSync()!.split('');
    board[int.parse(location[0])-1][int.parse(location[1])-1] = symbol;
    return board;
}

//function to check if there is a winner with current game board

bool checkWinner(List<List<String>> board) {
    // check rows first
    if(checkRows(board) || checkRows(transpose(board)) || checkRows(diagonals(board))) {
        print('Congratulations. $winner has won the game!');
        return true;
    } else{
        return false;
    }
}

//function to check the rows of the Lists
// returns true if there is a winner
//returns false if there is no winner

bool checkRows(List<List<String>> board) {
    for (var row in board) {
        if((row.toSet().length == 1) && (row.toSet().elementAt(0)!= ' ')){
            winner = row.toSet().elementAt(0);
            return true;
        }
    }
    return false;
} 

// function to transpose board so columns become rows

List<List<String>> transpose(List<List<String>> board){

    return [
        for(var i = 0; i < board.length; i ++) [for (var row in board) row[i]]
    ];
}

// function to return two lists of the diagonals

List<List<String>> diagonals(List<List<String>> board) {
    var diagOne = List.generate(3, (var i)=> board[i][i]);
    var diagTwo = List.generate(3, (var i)=> board[i].reversed.toList()[i]);
    return [diagOne, diagTwo];
}


// function to print the gameboard
void printGameBoard(List<List<String>> board) {
    for (var row in board) {
        print(' ---' * 3);
        print(
            '| ${row[0]} | ${row[1]} | ${row[2]} |'
        );
    }

    // end row
    print (' ---' * 3);
}
// program to test if there is a winner for a tic tac toe board given as a list of three lists

void main () {
    final tttList = [[2, 2,1], 
                    [1, 1, 1], 
                    [0, 2, 1]];

    gameWinner(tttList);
}

// function to get game winner
// accepts a list of lists and first checks rows, then columns, then diagonals to see if there is a winner
void gameWinner(List<List<int>> board) {
    // check rows for winners
    if (rowCheck(board)){
        print('Row Wins!');
    } else if (rowCheck(transpose(board))) {
        print('Column Wins!');
    } else if (rowCheck(diagonals(board))){
        print('Diagonal Wins!');
    } else {
        print('Draw.');
    }
}


// function to check for a row winner
// accepts a list of lists and returns true if there is a winner

bool rowCheck(List<List<int>> board) {
    for (List<int> row in board) {
        if (row.toSet().length == 1) {
            return true;
        }
    }
    return false;
}



// function to transpose board in order to check for column winners

List<List<int>> transpose (List<List<int>> board) {
    return [
        for (var i = 0; i <board.length; i++) [for (var row in board) row[i]]
    ];
}


// function to return a list of the diagonals

List<List<int>> diagonals(List<List<int>> board) {
    return [
        for (var i = 0; i < board.length; i ++) [board[i][i]],
        for (var i = 0; i < board.length; i++) [board[i].reversed.toList()[i]]
    ];
}

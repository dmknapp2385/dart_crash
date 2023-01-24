// program to test if there is a winner for a tic tac toe board given as a list of three lists

void main () {
    final tttList = [[0,1,2], 
                    [0, 1, 0], 
                    [0, 1, 1]];

    // varibale to hold winner
    var winner;

    // first check if there are horizontal winners
    for (var list in tttList) {
        // if list has 0, no winners
        if (list.contains(0)){
            winner = 'none';
        } else if (list[0] == list[1] && list[1] == list[2]) {
            winner = list[0];
            break;
        } else {
            winner = 'none';
        }
    }
    
    //chech for horizontal winners
    //first for loop to look at all the first indicies of all three lists
    for (var i = 0; i< 3; i++) {
        if (tttList[0][i] == tttList[1][i] && tttList[1][i] == tttList[2][i] && tttList[2][i] != 0) {
            winner = tttList[0][i];
            break;
        } else {
            winner = 'none';
        }
    }

    print(winner);
}
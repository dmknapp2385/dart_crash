// program that will take a user input for size of a game board and then draw a game board on the screen

import 'dart:io';

void main() {
    // get input
    stdout.write('How many columns do you want? ');
    int? columns = int.parse(stdin.readLineSync()!);
    stdout.write('How many rows do you wnat? ');
    int? rows = int.parse(stdin.readLineSync()!);

    printBorad(rows,  columns);
}

// function to print board

void printBorad(int rows, int columns) {
    for(var i =0; i < rows; i++) {
        print(' ---' * columns + ' ');
        print('|   ' * columns + '|');
    }
    print(' ---' * columns + ' ');
}
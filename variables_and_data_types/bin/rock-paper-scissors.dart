// program to play rock paper scissors against the computer

// import math and io library library
import 'dart:math';
import 'dart:io';

void main () {
    // create random object 
    final random = new Random();

    // create score trackers
    var userScore = 0;
    var compScore = 0;

    // create user/computer input options
    List<String> options = ['rock', 'paper', 'scissors'];

    // creatr rules of the game
    Map<String, String> rules = {'rock':'scissors', 'paper':'rock', 'scissors':'paper'};

    // intorduction
    print('Welcome to Rock, Paper, Scissors. \nType "quit" to exit the game');

    while(true) {
        // randomly select computer option
        var compChoice = options[random.nextInt(options.length)];
        stdout.write('Rock, Paper, Scissors?');
        var userChoice = stdin.readLineSync()!.toLowerCase();
        // decide if to exit program
        if (userChoice == 'quit') {
            print('Thank you for playing. \nYour Score: $userScore vs Computer: $compScore');
            break;
        }
        // decide who won
        if (!options.contains(userChoice)) {
            print('Incorrect option. Please choose again');
            continue;
        } else if (compChoice == userChoice) {
            print('We have a tie.');
            userScore += 1;
            compScore += 1;
        } else if (rules[compChoice] == userChoice) {
            print('Computer wins. Computer: $compChoice, User: $userChoice');
            compScore += 1;
        } else if (rules[userChoice]== compChoice) {
            print('You won. Computer: $compChoice, You: $userChoice');
            userScore += 1;
        }

    }


}

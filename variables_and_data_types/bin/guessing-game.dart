// computer randomly generates a random number and tells user if too high or too low and keep tracks of guesses

// import libraries
import 'dart:io';
import 'dart:math';

void main() {
    // create random object
    final random = Random();

    // varaible to hold random number
    var number = random.nextInt(100) +1;

    //guess counter
    var guesses = 0;

    print("Welcome. Try to guess the computer's number. \nEnter 0 to quit.");

    while(true) {
        stdout.write('Guess a number between 1 and 100 ');
        int? userGuess = int.parse(stdin.readLineSync()!);

        if (userGuess == 0) {
            print('Number of guesses: $guesses. \nGood Bye');
            break;
        }

        if (userGuess == number) {
            print('You have guessed correctly. Number of guesses: $guesses.');
            break;
        } else if (userGuess < number) {
            print('Too low. Try again');
            guesses += 1;
        } else if ( userGuess > number) {
            print('Too high. Try again');
            guesses +=1;
        } else if (userGuess <1 && userGuess > 100) {
            print('Invalid Option. Try again');
            continue;   
        }
    }
}
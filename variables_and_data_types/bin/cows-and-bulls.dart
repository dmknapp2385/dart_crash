// program to play cows and bulls with the computer
// the object of the game is to guess a 4 digit number
// for each correct guess in a correct location, the user gets a cow
// for each incorrect guess, the use getsa a bull
// cows and bulls are tracked by the comptuer

// import libraries
import 'dart:math';
import 'dart:io';

//global variable
final random = new Random();

// main function
void main() {
    //get random four digit number number between 1000 and 9999
    String randomNumber = (random.nextInt(10000-1000) + 1000).toString();
    //game instructions
    print('Welcome to cows and bulls.\nType "exit" to stop the game.');

    // attempt tracker
    int attempts = 0;

    // actual game
    while(true) {
        // loop variables
        var cows = 0;
        var bulls = 0;
        attempts += 1;
        
        stdout.write('Guess a number: ');
        String? input = stdin.readLineSync()!.toLowerCase();

        // check game conditions to validate input and see if correct guess
        if(input == 'quit') {
            break;
        } else if (input == randomNumber) {
            print('Congrats. You guessed correctly');
            break;
        } else if (input.length != randomNumber.length){
            print('Please enter a valid four digit number: ');
            continue;
        }

        //compare input to randome number. If number is the same index, increase cow; if number is within random number, increase bull

        for(var i =0; i < randomNumber.length; i++) {
            if (input[i]== randomNumber[i]) {
                cows +=1;
            } else if (randomNumber.contains(input[i])) {
                bulls += 1;
            } 
        }
        print('You did not guess correctly. Guesses: $attempts. Cows: $cows. Bulls: $bulls');   
   }

}
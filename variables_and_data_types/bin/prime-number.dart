// program that determines if a number is prime or not

// import libraries
import 'dart:io';

// main function
void main() {
    while (true){
        stdout.write ('Please enter a number greater than 1. Or press 0 to exit: ');
        int? myNumber = int.parse(stdin.readLineSync()!);
        if (myNumber == 0) {
            print('Thank you! Good bye.');
            break;
        }  else {
            isPrime(myNumber);
        } 
    }
}

void isPrime(number) {
    // loop exit variable
    var isPrime = true;
    // divisor variable, start 2 because one will always divide
    var divisor = 2;
    // exit if number is not greater than 1
    while (isPrime && divisor < number) {
        if (number % divisor == 0) {
            print('This is not a prime number');
            isPrime = false;
        } else {
            divisor += 1;
        }
    }

   if (isPrime == true) {
     print('This is a prime number'); 
   }
}
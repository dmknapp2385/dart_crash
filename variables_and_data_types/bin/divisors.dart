// program gets a user input then prints all divisors of number inputed

import 'dart:io';

void main() {
    print('Enter a number: ');
    int? myNumber = int.parse(stdin.readLineSync()!);
    List<int> divisors = [];
    for(var i = 2; i < myNumber; i++ ){
        if (myNumber % i == 0){
            divisors.add(i);
        }

    }
    print(divisors);
}
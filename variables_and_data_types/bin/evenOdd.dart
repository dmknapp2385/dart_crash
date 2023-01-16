import 'dart:io';

void main() {
    stdout.write('Enter a number: ');
    var number = int.parse(stdin.readLineSync()!);
    if (number % 2 == 0){
        print('This number is even');
    } else {
        print('This number is odd');
    }

}
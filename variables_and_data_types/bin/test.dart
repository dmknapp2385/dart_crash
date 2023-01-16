import 'dart:io';


void main() {
    // ask user their name
    print('What is your name? ');
    String? name = stdin.readLineSync();
    // ask user their age
    print('what is your age?');
    int? age = int.parse(stdin.readLineSync()!);

    // calculate years until 100
    var years_to_100 = 100 - age;

    print('Hi $name. You are $age years old and have $years_to_100  years until you are 100');

}
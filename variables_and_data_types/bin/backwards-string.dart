// program that asks a user for a multi word input and returns the input in reverse order

//import libraries
import 'dart:io';

void main() {
    stdout.write('Please input a sentence of multiple words: ');
    String? sentence = stdin.readLineSync()!;
    var reverse = reverseString(sentence);
    print(reverse);
}

// function to reverse the string
String reverseString(string) {
    return string.split(' ').reversed.join(' ');
}
// checks to see if user input string is a palindrome

import 'dart:io';

void main() {
    stdout.write('Please enter a word: ');
    var myWord = stdin.readLineSync()!;
    int wordLength = myWord.length;
    var newString = '';
    for(var i=wordLength-1; i >=0; i--) {
        newString += myWord[i];
    }
    if (myWord == newString) {
        print('This is a palindrome');
    } else {
        print('Not a palindrome');
    }
}
// checks to see if user input string is a palindrome

import 'dart:io';

void main() {
    stdout.write('Please enter a word: ');
    var myWord = stdin.readLineSync()!;
    int wordLength = myWord.length;
    
    ///my initial code
    //var newString = '';
    // for(var i=wordLength-1; i >=0; i--) {
    //     newString += myWord[i];
    // }
    // if (myWord == newString) {
    //     print('This is a palindrome');
    // } else {
    //     print('Not a palindrome');
    // }

    // alternative code
    var reverseString = myWord.split('').reversed.join('');

    // ternary operator
    myWord == reverseString
            ?print('This word is a palindrome')
            :print('This word is not a palindrome');

}
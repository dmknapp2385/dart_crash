// program to genereate weak and strong passwords. User is asked for preference

// import libraries
import 'dart:math';
import 'dart:io';

// random object to be used globally
final random = new Random();

//main function
void main() {
    String? password;
    // get user input
    stdout.write('Would you like a strong or weak password? Type "Strong" or "Weak". ');
    String? pwType = stdin.readLineSync()!.toLowerCase();
    if (pwType == 'weak') {
        password = weakPassword();
    } else {
        password = strongPassword();
    }
    print(password);
}

// weak password generator function
String weakPassword() {
    // empty list to hold random genereated ascii codes
     List<int> charCodes = [];;
    for (var i = 0; i < 8; i ++) {
        // determine if upper or lowercase. 0 for upper, 1 for lower
        var upperOrLower = random.nextInt(2);
        if (upperOrLower == 0) {
            // generate random ASCII code for upper case between 65 and 90
            charCodes.add(random.nextInt(26) + 65);           
        } else {
            // generate random ASCII code for lower case between 97 and 122
            charCodes.add(random.nextInt(26)+ 97);
        }
    }
    // convert ascii codes into string
    var password = new String.fromCharCodes(charCodes);
    return password;    
}


// strong password generator function
String strongPassword() {
    List <int> charCodes = List.generate(8, (_) =>(random.nextInt(94) + 33));
    var password = new String.fromCharCodes(charCodes);
    return password;
}
/// this program asks a user how many fibonnaci numbers to generate and then prints them out

// import libraries
import 'dart:io';

void main() {
    //how many numbers to genereate
    stdout.write('How many fibonnaci numbers would you like to genereate? ');
    var numberToGenerate = int.parse(stdin.readLineSync()!);
    if (numberToGenerate == 0) {
       print('No sequence.');
    } else if (numberToGenerate == 1) {
        print([1]);
    } else if (numberToGenerate ==2) {
        print([1,1]);
    } else if (numberToGenerate > 2) {
        print(generateSequence(numberToGenerate)); // call function to genereate sequence
    }
    
}


// function to generate sequence with number parameter

List<int> generateSequence(int seqNumber) {
        List <int> sequence = [1,1];
        for (var i =1, j = 0; i < seqNumber; j = i, i++) {
            var nextNumber = sequence[i] + sequence [j];
            sequence.add(nextNumber);
        }
        return sequence;
    
}
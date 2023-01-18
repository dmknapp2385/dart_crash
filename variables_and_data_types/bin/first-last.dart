// program and gets the first and last numbers from a list of numbers
 
 // import math library
 import 'dart:math';

 // main function
 void main () {
    final random = new Random();
    // generate random list of numbers
    List<int> initial = List.generate(10, (_)=> random.nextInt(100));
    print(initial);
    print(newList(initial));
 }

 List<int> newList(List<int> initial) {
    return [initial.first, initial.last];
 }


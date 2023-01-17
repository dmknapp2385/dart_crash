void main() {
    var myString = 'This is my string';
    // breaks string into a list of words
    var newString = myString.split(' ');
    //breaks string into list of characters
    var characters = myString.split('');
    // reverses the list
    var newList = characters.reversed;
    // joins list into string
    var newWord = newList.join('');
    print(newWord);
}
void main() {
    List<int> myList= [2, 5, 3, 50, 66, 28, 1, 0];
    var lessThanFive = [];
    for(var i in myList) {
        if (i < 5){
            lessThanFive.add(i);
        }
    }

    print(lessThanFive);
}

// one liner 
// print([for(var i in myList) if (i < 5) i])
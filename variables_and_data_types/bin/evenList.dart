void main() {
    List<int> a = [3, 6, 21, 200, 102, 45, 6];
    List<int> b = [];

    ///initial code
    // for(var i = 1; i < a.length; i+=2){
    //     b.add(a[i]);
       
    // }
    // print(b);

    // alternate
    var i = 0;
    print([for (var e in a) if (++i % 2 == 0) e] );
}
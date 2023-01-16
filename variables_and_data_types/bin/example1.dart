void main() {
    // constant cannot be reassigned    
    const name = 'foo';

    // final is similar to const, cannot reassign a value to it
    //can alter contents, i.e. if a list, can remove list
    final ageList = [30,25, 31];
    ageList.removeAt(0);
    print(ageList);

    //vanilla variables, can be reassigned
    // infers data types
    // can assign datatype use datatype instaed of var; i.e. String address = '6716 E rosewood';
    
    var address = '6716 E Rosewood';
    // reassignment 
    address = '12 main';
    /// reassignment
    address = address.replaceAll('main', 'rosewood');
    print('my address is $address');    //interpoated string
    

    // late varibles
    // expect 'in getValue', 'in main, after myvalue, then 10
    // actual is reversed because late variables are not initialized until they are used. So get Value is not called until the print (myvalue)
    late final myvalue = getValue();
    print('in main, afgter myvalue');
    print(myvalue);

}
 
int getValue(){
    print('in getValue');
    return 10;

}
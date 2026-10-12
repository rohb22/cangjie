
// the names of variables in cj is called identifiers
//  its the same like any other prog lang naming can include _ but no other special characters
// but unlike python just _ wont work (ubless its on for in loop)


main() 
{
    // var is immutable let isnt
    var _name = "rohb";
    println("Hello, ${_name}");

    // for the whole variable assignation we can add the data type
    let c: Int64 = 20;
    // so basically variable_name:data_type = data
    // but if we already initialize the variable with a data the compiler can directly infer to it
    // so in cases like that its not needed
    // but for like empty variable its a must
    var d: Int64;

    d = 30;
    // also compiler would throw warning in cases variable is not used but could be silence by
    // cjc main.cj -o main -Woff unused
    println(d);

    

}
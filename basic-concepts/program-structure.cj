
// same as any other languages
// global var
let a = 5; // global variables need to be initialized or it will throw an error

// global func
func b() {
    // local var
    let c = 4;
}

// global class
class A {
    // member varuable
    var b = 6;
    // member function
    public func d(){
        println(b)
    }
    static let z: Int32 = 3; // same here static memeber variables need to be initialized
}


// value type variables
// basically it gives a copy when u reference it
struct Copy {
    var data = 2012
}


// reference type variables 
// it give only the reference to the value
// so saying c1 = Share()
// c2 = c1
// c2.data = 2021
// both c1 and c2 data is 2021 since they are referencing a single thing
class Share {
    var data = 2012
}

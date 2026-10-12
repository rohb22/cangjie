

// still the same thing
// if else 
// but the difference is that if only accepts boolean
// unlike other proglang doing if(element) as long as element isnt null or false the condition is true
// in cangjie case its not it should only if(true) true can be in form of expression

// while is still the same
// do while is the same


// the new thing i guess is let patterns

main() {
    let a = Some(3)
    let c = if (let Some(b) <- a) { 1 } // pattern match succeeds
        else { 2 } // value of this `if` expression is 1
    let d = Some(1)
    if (let Some(e) <- a && let Some(f) <- d) { // both patterns match, value of condition is true
        println("${e} ${f}") // print 3 1
    }
    if (let Some(f) <- d && f > 3) { // pattern matches; f = 1, f > 3 check fails, goto else branch
        println("${f}")
    } else {
        println("d is None or value of d is less or equal to 3") // print this line
    }
    if (let Some(_) <- a || let Some(_) <- d) { // enum pattern joined by `||`, no variable binding, correct
        println("at least one of a and d is Some") // print this line
    } else {
        println("both a and d are None")
    }
    let g = 3
    if (let Some(_) <- a || g > 1) {
        println("this") // print this line
    } else {
        println("that")
    }

    if (let Some(a) <- fun() as Option<Int64>) {}
    // parser error, `as` has lower precedence than `..`
    if (let Some(a) <- (fun() as Option<Int64>)) {}
        // correct

    if (let Some(a) <- b && a + b > 3) {}
        // correct, parsed as (let Some(a) <- b) && (a + b > 3)
    if (let m <- 0..generateSomeInt()) {}
        // correct



        
    // another new thing is where
    for (i in 0..8 where i % 2 == 1) { // The loop body is executed only if i is an odd number.
        println(i)
    
}


}



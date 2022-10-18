//: [Previous](@previous)

import Foundation

//Swift Error Handling
var n1 = 99
var n2 = 0

var res = n1/n2

enum DivisionError: Error {
    case dividedByZero
}
//Creating throwing function using throws keyword
func division(n1: Int, n2: Int) throws {
    if n2 == 0 {
        throw DivisionError.dividedByZero
    }
}
do {
    try division(n1: 90, n2: 0)
    print("Correct Division")
}
catch DivisionError.dividedByZero {
    print("Denominator can't be Zero")
}
//Disable Error Handling
do {
    try? division(n1: 90, n2: 0)
    print("Correct Division")
}
catch DivisionError.dividedByZero {
    print("Denominator can't be zero")
}


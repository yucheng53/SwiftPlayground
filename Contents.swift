import UIKit
//Swift Basics 2 – Assignments

//Exercise 15
//Assign a tuple with two values in it to a constant named
//player.
//The values could represent the number of a hockey player
//and the name of the hockey player. For example, Igor
//Larionov whose number used to be 8.
let onePlayer = (8, "Igor Larionov")

//Exercise 16
//OK, now you have a player tuple. Decompose (i.e. split) the
//number and the name into two constants named number and
//name. This could be done in at least three ways.
let number = onePlayer.0
let name = onePlayer.1

//Exercise 17
//Can a constant have an optional type? If you&#39;re not sure, try
//it and see what happens.
//Solution. Yes, a constant can have an optional type
//let value: Int? = nil
//print(value)
//let otherValue: Int? = 6
//print(otherValue)
let someOptionalNum: Int? = 3
print(someOptionalNum!)

//Exercise 18
//Why doesn&#39;t this work? What needs to be added to value on
//the second line for this to work?
//let value: Int? = 17
//let banana: Int = value
let value: Int? = 17
let banana: Int = value! //add a "!" to unwrap the optional variable

//Exercise 19
//If value in the previous exercise had been nil, what would
//have happened if you force unwrapped value?
//let value: Int? = nil
//let banana: Int = value!
/* It would show an error message */

//Exercise 20
//What would be a better way to assign value to the banana
//constant?
/* We could use nil coalescing operater */

//Exercise 21
//Write a Swift program to compute the sum of the two
//integers. If the values are equal return the triple their sum.
func twoSum(num1: Int, num2: Int) -> Int {
    if num1 == num2 {
        return 3 * num1
    }
        return num1 + num2
}

//Exercise 22
//Write a Swift program to check if 5 appears as either the first
//or last element in a given array of integers. The array length
//should be 1 or more.
func check5(arr: Array<Int>) -> Bool {
  if arr.count < 1 {
    return false
  }
    if arr[0] == 5 || arr[arr.count-1] == 5  {
        return true
    }
    return false
}
print(check5(arr: [1]))

//Exercise 23
//Write a Swift program to create a new array with the elements
//in reverse order of a given array of integers.
func reverseArr(arr: Array<Int>) -> Array<Int> {
    var newArr: Array<Int> = []
    for i in arr {
      newArr.append(i)
    }
    newArr.reverse()
    return newArr
}
print(reverseArr(arr: [1,2,3,4]))

//Exercise 24
//Write a Swift program to rotate the elements of an array of
//integers to left direction. Therefore {1, 2, 3} yields {2, 3, 1}
func rotateArr(arr: Array<Int>) -> Array<Int> {
    var newArr = arr + []
    let temp = newArr.remove(at: 0)
    newArr.append(temp)
    return newArr
}
print(rotateArr(arr: [1,2,3]))

//Exercise 25
//Write a Swift program to compute the sum of all the elements
//of a given array of integers and length 4.
//
//Exercise 26
//
//Write a Swift program to compute and return the absolute
//difference of n and 51, if n is over 51 return double the
//absolute difference
//Exercise 27
//Write a Swift program that accept two integer values and
//return true if one of them is 20 or if their sum is 20
//Exercise 28
//Write a Swift program to accept two integer values and return
//true if one is negative and one is positive. Return true only if
//both are negative.
//Exercise 29
//Write a Swift program that return true if either of two given
//integers is in the range 10..30 inclusive.
//Exercise 30
//Write a Swift program to change the first and last character
//of a given string.
//



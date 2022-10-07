import UIKit
//
////1
//var tem : Float = 70.0
//tem = 72.0
//
////2
//let sec : Int = 3600
////sec = 3440 - A constant variable with a value could not be reassigned a new value
//
////3
//var someNum1 : Int = 1
//var someNum2 = 2
//
////4
//let numOfWheels : Int
//numOfWheels = 4 //Once a constant is declared without a value, it could be assigned a new value
//print(numOfWheels)
//
////5
//let π = 3.1415
//
////6
//var 🤓 = "looks cool"
//
////7
//var greeting = "Hello world!"
//print(greeting)
//
////8
//print(Int16.max) //The maxinum value of Int16 is 32767
//let pi = 3 + 0.141592654  //This will make pi as a double value.
//print(pi)
//
////9
//// let myNumber: UInt = -17 //shows a overflow error message,because Uint doesn't inclued negative number
//
////10
////let bigNumber : Int16 = 32767 + 1 //A overflow error message, the value is bigger than the maximum value Int16 could sort which is 32676
//
////11
////let pi = 3.141592654
////let approximatePi : Int = pi //Could not assign a double type value to a int type variable
////let approximatePi = Int(pi)
//
////12
////This is a single line comment
///*
//multiline
//comments
// */
//
////13
///*
// This is
// /* nested
// multiline */
// comment
// */
//
////14
//let oneSentence = "Good morning"; var anotherOne = "Good afternoo"


var str : Dictionary<String, String> = ["goods=" : "good","bad" : "not bad", "well" : "not well"]
for (index,value) in str {
    print(index,value)
}

let keys = [1, 2, 3, 4]
let values = ["c", "b", "a"]
let dic = Dictionary(uniqueKeysWithValues: zip(keys,values))
let sortDic = dic.sorted(by: { $0.1 < $1.1})

print(sortDic)


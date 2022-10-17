//: [Previous](@previous)

import Foundation
//1. Create a function to add two integers and returns an
//integer value ?
func addTwo(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

//2. What Causes an Error in This Piece of Code? How Could
//You Fix It?
//let n1: Int = 1
//let n2: Float = 2.0
//let n3: Double = 3.34
//var result = n1 + n2 + n3
let n1: Int = 1
let n2: Float = 2.0
let n3: Double = 3.34
var result = Double(n1) + Double(n2) + Double(n3)

//3. What Does init() Do in Swift?
//It could prepare an instance of a class, structure, or enumeration for use, it would set an initial value for each stored property

//4. What Are Protocols in Swift? Give an Example
// A protocol is a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
protocol Greeting {
    var name: String{ get }
    func message()
}
class People: Greeting {
    var name = "John"
    func message() {
        print("Hello", name)
    }
}
var person1 = People()
print(person1.name)
person1.message()

//5.What Is the Double Question Mark Operator?
//It is called nil coalescing operator, (a ?? b) it could unwraps an optional a if it contains a value, or returns a default value b if a is nil.

//6.What Is the Guard Statement?
//Use guard let syntax to deal with the situation whether an opional has a value or not

//7.What Are the Three Primary Collection Types in Swift?
//They are arrays, sets and dictionaries.

//8.What’s the Difference Between Structures and Classes?
//Structures are value types, classes are reference types. Classes coule be inherited but structures could not.

//9.What is Optional Chaining?
//Optional chaining is when we try to query and call properties, methods,and subscripts on an optional, multiple quries can be chained together, the entire chain fails if any link in the chain is nil

//10.What Is Optional Binding?
//Optional binding is that we can use if let or while syntax to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.

//11.What Is an In-Out Parameter in Swift? Give an example?
//Since all parameters passed into a Swift function are constants, so we can't change them, we can pass in one or more parameters as inout, which means they could be changed inside the function.
func greet(str: inout String) {
    str = str.capitalized
    print(str)
}
var someStr = "hello"
greet(str: &someStr)

//12.Is It Possible to Give a Default Value to a Function Parameter?
//Yes,it is.
func showNumber(num1: Int, num2: Int = 5) {
    print(num1 + num2)
}
showNumber(num1: 3)

//13.What Is Force Unwrapping? When Should You Use It?
//When we are certain that an instance of Optional contains a value, we can unwarap the value by useing the forced unwrap operator(!)
//Give an example?
let number = Int("25")!
print(number)

//14.What Does the Mutating Keyword Do? Give an example?
//Since the properties of value types such as structures can not be modified within its instance methods by default, we have to use the mutating keyword in the instance method in order to modify the properties of a value type.
struct Employee {
    var teamName: String
    mutating func changeTeam(newTeam: String) {
        self.teamName = newTeam
    }
}

//15.What Is a Deinitializer? How to Create One?
//Deinitialization is a process to deallocate class instances when they're no longer needed, this frees up the memory space occupied by the system.
class Cat {
    var catName: String
    init() {
        catName = "meow"
    }
    deinit {
        print("Memory deallocated")
    }
}

//16.What is a Protocol in swift?
// A protocol is a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.

//17.What’s the difference between a protocol and a class in Swift?
//Classes define what an object is, protocols define a behavior the object has.We can creat objects from classes, whereas protocols are just type definitions.

//18.Can You Fix the Issue in this Code?
//struct Apple {
//
//}
//func pick(apple: Apple?) {
//  guard let apple = apple else {
//    print(&quot;No apple found!&quot;)
//  }
//  print(apple)
//}
struct Apple {

}
func pick(apple: Apple?) {
    guard let apple = apple else {
        print("No apple found!")
        return
    }
    print(apple)
}

//19.How to inherit multiple protocols in a same class? Give an example?
protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
class Person: Named, Aged {
    var name: String = "John"
    var age: Int = 30
}
var p1 = Person()
print("Name:", p1.name, " Age:", p1.age)

//20.How to append one array to another array in Swift?
var first = ["John", "Paul"]
let second = ["George", "Ringo"]
let res = first + second
print(res)

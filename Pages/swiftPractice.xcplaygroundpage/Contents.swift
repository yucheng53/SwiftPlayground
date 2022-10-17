//: [Previous](@previous)

import Foundation

//enum Associated Values
enum Computer {
    //Associate string value
    case brandName(String)
    //Associate Int value
    case price(Int)
}
//pass values to brandName
var brand = Computer.brandName("Dell")
print(brand)
var offerPrice = Computer.price(300)
print(offerPrice)



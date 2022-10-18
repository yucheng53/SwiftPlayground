//: [Previous](@previous)

import Foundation

enum SomeError: Error {
    case noName
}
class Employee {
    var name: String?
    init (name: String?) throws {
        guard let temp = name else {
            throw SomeError.noName
        }
        self.name = temp
    }
}

do {
    ∂d
}





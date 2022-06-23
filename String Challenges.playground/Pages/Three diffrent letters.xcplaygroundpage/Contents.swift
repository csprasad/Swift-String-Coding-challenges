//: [Previous](@previous)

import Foundation

func challenge11(input: String, input1: String) -> Bool {
    
    guard input.count == input1.count else { return false}
    var diffranceCounter = 0
    let secondArray = Array(input1)
    
    //This code works great but last condition it didn't satisfy so moving it to next solution
  /*
    for i in input.lowercased() {
        if diffranceCounter > 2 {
            return false
        } else if !input1.contains(i) {
            diffranceCounter += 1
        }
    }
    return true */
    
    for (index, element) in input.enumerated() {
        if secondArray[index] != element {
            diffranceCounter += 1
            
            if diffranceCounter == 3 {
                return false
            }
        }
    }
    
    return true
    
    
}

print(challenge11(input: "clamp", input1: "maple"))

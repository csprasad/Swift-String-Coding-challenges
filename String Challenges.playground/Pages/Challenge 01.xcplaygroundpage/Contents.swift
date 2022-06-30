//: [Previous](@previous)

import Foundation

// MARK: - Take string as input and create an array with string words and reverse print the array without using any pre defined methods

/// example :   input - > "good will come"
/// output -> ["come", "will", "good"]

func generateArray(input: String) -> [String] {
    var tempString = ""
    var tempArray = [String]()
    
    for i in input {
        if i == " " {
            print("temp string", tempString)
            tempArray.insert(tempString, at: 0)
            tempString = ""
        } else {
            tempString.append(i)
        }
    }
    
    tempArray.insert(tempString, at: 0)
    
    // var reversedArray = [String]()
    
    // for i in tempArray {
    //     reversedArray.insert(i, at: 0)
    // }
    
    return tempArray
}

print(generateArray(input: "good will arrive at this point"))

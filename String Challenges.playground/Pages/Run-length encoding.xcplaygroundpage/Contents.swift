//: [Previous](@previous)

import Foundation

func runLengthEncoding(input: String) -> String {
    var tempStore = ""
    var currentCharCount = 0
    var bestMatch = [""]
    
    for i in input {
        tempStore.append(i)
        if tempStore.contains(i) {
            currentCharCount += 1
        } else {
            bestMatch.append("\(currentCharCount)")
        }
    }
    print(bestMatch)
    return tempStore
}

print(runLengthEncoding(input: "aaAAbb"))

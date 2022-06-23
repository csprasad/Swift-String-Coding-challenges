//: [Previous](@previous)

import Foundation

func findLogestPrefix(input: String) -> String {
    var tempPrefix = ""
    var bestPrefix = ""

    var parts = input.components(separatedBy: " ")
    guard let first = parts.first else { return "Didn't find first value" }

    for i in first {
        tempPrefix.append(i)
        for j in parts {
            if !j.hasPrefix(tempPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = tempPrefix
    }
    return bestPrefix
}


print(findLogestPrefix(input: "flip flap flop"))

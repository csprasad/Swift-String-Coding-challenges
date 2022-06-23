//: [Previous](@previous)

import Foundation

func letterCount(input: String, count: String) -> Int {
    
    //This is great solution but bit lenghty or slow comparing other solution
   /* var counter = 0
    _ = input.map {$0 == count ? (counter += 1) : (counter = counter)}
    return counter */
    
    //The other solution is
    let customized = input.replacingOccurrences(of: count, with: "")
    return input.count - customized.count
}

print(letterCount(input: "Mississippi", count: "i"))

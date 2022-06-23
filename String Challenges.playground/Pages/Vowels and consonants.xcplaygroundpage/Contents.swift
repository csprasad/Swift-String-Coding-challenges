//: [Previous](@previous)

import Foundation

func challenge10(_ input: String) -> (vowels: Int, consonants: Int) {
    let Value = input.replacingOccurrences(of: " ", with: "")
    print(Value)
    var vowelCount = 0
    var consonantCount = 0
    let vowelsAre = "aeiou"
    
    for i in Value {
        if vowelsAre.contains(String(i)) {
            vowelCount += 1
        } else {
            consonantCount += 1
        }
    }
    
    return (vowels: vowelCount, consonants: consonantCount)
}

print(challenge10("Swift Coding Challenges"))





import Foundation
import Darwin

func removeDuplicate(input: String) -> String {
    var tempDict = [Character: Bool] ()
    let res = input.filter {
        tempDict.updateValue(true, forKey: $0) == nil
    }
    return String(res)
}


//this below code runs faster than first solution.

func removeDuplicateWithLoop(input: String) -> String {
    var temp = [String]()
    
    for i in input {
        if !temp.contains(String(i)) {
            temp.append(String(i))
        }
    }
    
    return temp.joined()
}

func removeDuplicatesWithSet(_ input: String) -> String {
    let temp = Set(input)
    //give you unique values with unordered list.
    return String(temp)
}

print(removeDuplicate(input: "Mississippi"), "-", removeDuplicateWithLoop(input: "Mississippi"), "-", removeDuplicatesWithSet("Mississippi"))

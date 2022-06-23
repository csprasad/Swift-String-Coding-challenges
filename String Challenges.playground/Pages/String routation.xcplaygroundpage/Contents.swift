import Foundation


func stringRoutation(input1: String, input2: String) -> Bool {
    
//MARK: - i wrote this below code bcz both inputs should contain same characters and and it will give correct answer. but it runs on O(n) notation, the bigger the string more time it consumes. so we move to next solution.
   /* for i in input1 {
        if !input2.contains(i) {
            return false
        }
    }
    return true */
    
//MARK: here is the simple solution, doubling first input will give you all possible routations, we using guard bcz both the string must have equal characters so.
    let combine = input1 + input1
    guard input1.count == input2.count else {return false}
    return combine.contains(input2)
}

print(stringRoutation(input1: "cat", input2: "tca"))

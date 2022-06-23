import Foundation

func FindSameCharInString(input1: String, input2: String) -> Bool {
    let temp1 = Array(input1)
    let temp2 = Array(input2)
    
    return temp1.sorted() == temp2.sorted()
}

print(FindSameCharInString(input1: "abc", input2: "acb"))

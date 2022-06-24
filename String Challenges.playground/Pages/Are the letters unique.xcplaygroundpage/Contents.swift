import UIKit
import Foundation

func duplicate(input: String) -> Bool {

//This method works fine but O(n) solution takes more time for big inputs
    // var temp = [Character]()
    
    // for i in input {
    //     if temp.contains(i) {
    //         return false
    //     }
    //     temp.append(i)
    // }
    
    // return true
    
    //This method will perform faster bcz Set dont contain dubplicate values
    let array = Array(input)
    let sortedArray = Array(NSOrderedSet(array:array))
    print(sortedArray)
    
    return Set(input).count == input.count
}


print(duplicate(input: "abcdefghijklmnopqrstuvwxyz"))
//print(duplicate(input: "122334455"))

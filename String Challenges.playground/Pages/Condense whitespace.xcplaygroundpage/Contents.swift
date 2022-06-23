import Foundation


func removeMoreSpace(input: String) -> String {

//MARK: - this code is to remove any duplicate whitespaces
   /* let components = input.components(separatedBy: .whitespacesAndNewlines)
    
    return components.filter { !$0.isEmpty}.joined(separator: " ")
    */
    
//MARK: - The above code works just fine but we need to add space in the begining if more whitespace are there is string so following code will help it achive.
   
    /*var seenSpace = false
    var returnValue = ""
    
    for letter in input {
        
        if letter == " " {
            if seenSpace {continue}
            seenSpace = true
        } else {
            seenSpace = false
        }
        
        returnValue.append(letter)
    }
    
    return returnValue */
    
//MARK: - the above code works perfect but now we are using regular expresion to shorten code : here we are using " +" regular expersion to count more whitespace and replacing it with one whitespace.
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

print(removeMoreSpace(input: "          a b                        c"))

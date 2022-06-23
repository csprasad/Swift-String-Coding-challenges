import Foundation

//Challenge is to not use contain() create custom one.

func findString(input1: String, input2: String) -> Bool {
    return input1.customContains(input2)
}

print(findString(input1: "Hello world", input2: "HEllo"))

extension String {
    func customContains(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}

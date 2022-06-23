import Foundation


func findPangrams(input: String) -> Bool {
    let squezed = Set(input.lowercased().replacingOccurrences(of: " ", with: ""))
    return squezed.count == 26 ? true : false
}

print(findPangrams(input: "The quick brown fox jumps over the lazy dog"))

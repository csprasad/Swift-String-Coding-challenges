import Foundation

func palindrome(input: String) -> Bool {
    let reversed = input.lowercased().reversed()
    return String(reversed) == input.lowercased()
}

print(palindrome(input: "Rats live on no evil star"))

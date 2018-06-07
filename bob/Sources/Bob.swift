//Solution goes in Sources
import Foundation
class Bob {
    static func hey(_ input: String) -> String {
        let upperCase = input.uppercased()
        let lowerCase = input.lowercased()
        switch input {
        case let a where a.isEmpty || a.hasSuffix(" "):
            return "Fine. Be that way!"
        case let a where a == upperCase && a != lowerCase:
            return "Whoa, chill out!"
        case let a where a.hasSuffix("?"):
            return "Sure."
        default:
            return "Whatever."
        }
    }
}

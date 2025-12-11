import Foundation

class Bob {
  static func response(_ message: String) -> String {
    let trimmed = message.trimmingCharacters(in: .whitespacesAndNewlines)
    let allCapital: Bool = trimmed.allSatisfy { !$0.isLetter || $0.isUppercase }
    let anyCharacter: Bool = trimmed.contains { $0.isLetter }
    let isQuestion: Bool = trimmed.hasSuffix("?")

    if trimmed.count == 0 {
      return "Fine. Be that way!"
    } else if anyCharacter && isQuestion && allCapital {
      return "Calm down, I know what I'm doing!"
    } else if isQuestion {
      return "Sure."
    } else if anyCharacter && allCapital {
      return "Whoa, chill out!"
    } else {
      return "Whatever."
    }
  }
}

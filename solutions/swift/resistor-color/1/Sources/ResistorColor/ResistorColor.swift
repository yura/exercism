import Foundation

enum ResistorColor: String, CaseIterable {
    // Write your code for the 'ResistorColor' exercise in this file.
  case black, brown, red, orange, yellow, green, blue, violet, grey, white

  static func colorCode(for code: String) -> Int {
    var i = 0
    for c in Self.allCases {
      if c.rawValue == code {
        return i
      }
      i += 1
    }
    return -1
  }
  static var colors: [String] { Self.allCases.map { $0.rawValue } }
}

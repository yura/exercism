import Foundation

enum ResistorColor: Int, CaseIterable {
    // Write your code for the 'ResistorColor' exercise in this file.
  case black = 0, brown, red, orange, yellow, green, blue, violet, grey, white
  static func colorCode(for code: String) -> Int { colorsMap[code] ?? -1 }
  static var colors: [String] { Self.allCases.map { "\($0)" } }
}

let colorsMap: [String: Int] = { Dictionary(uniqueKeysWithValues: ResistorColor.allCases.map { ("\($0)", $0.rawValue) }) }()

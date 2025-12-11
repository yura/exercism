enum ResistorColor: Int, CaseIterable {
  case black = 0, brown, red, orange, yellow, green, blue, violet, grey, white

  static let colorsMap: [String: Int] = { Dictionary(uniqueKeysWithValues: Self.allCases.map { ("\($0)".lowercased(), $0.rawValue) }) }()
  static func colorCode(for code: String) -> Int { colorsMap[code.lowercased()] ?? -1 }
  static var colors: [String] { Self.allCases.map { "\($0)" } }
}


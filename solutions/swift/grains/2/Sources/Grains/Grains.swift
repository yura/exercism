import Foundation

enum GrainsError: Error {
  case inputTooLow
  case inputTooHigh
}

struct Grains {
  static func square(_ num: Int) throws -> UInt64 {
    guard num > 0 else { throw GrainsError.inputTooLow }
    guard num <= 64 else { throw GrainsError.inputTooHigh }

    return NSDecimalNumber(decimal: pow(2, num-1)).uint64Value
  }

  static var total: UInt64 {
    (1...64).reduce(0) { $0 + (try! square($1)) }
  }
}

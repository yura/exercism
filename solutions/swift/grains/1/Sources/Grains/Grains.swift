import Foundation

enum GrainsError: Error {
  case inputTooLow
  case inputTooHigh
}

struct Grains {
  static func square(_ num: Int) throws -> UInt64 {
    if num < 1 {
      throw GrainsError.inputTooLow
    }

    if num > 64 {
      throw GrainsError.inputTooHigh
    }

    return NSDecimalNumber(decimal: pow(2, num-1)).uint64Value
  }

  static var total: UInt64 {
    var result: UInt64 = 0
    for i in 1...64 {
      do {
        result += try! square(i)   
      } catch {
      }
    }
    return result
  }
}

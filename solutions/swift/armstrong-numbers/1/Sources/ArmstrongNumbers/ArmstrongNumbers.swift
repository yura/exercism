import Foundation

func isArmstrongNumber(_ number: Int) -> Bool {
  let digits = String(number).map { Int(String($0))! }
  let sum = digits.map { pow(Double($0), Double(digits.count)) }.reduce(0, +)
  return number == Int(sum)
}

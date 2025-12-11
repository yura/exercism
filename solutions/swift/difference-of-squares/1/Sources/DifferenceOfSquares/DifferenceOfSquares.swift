class Squares {
  var squareOfSum = 0
  var sumOfSquares = 0
  var differenceOfSquares = 0

  init(_ n: Int) {
    let square: ((Int) -> Int) = { $0 * $0 }
    squareOfSum = square((1...n).reduce(0, +))
    sumOfSquares = (1...n).map(square).reduce(0, +)
    differenceOfSquares = squareOfSum - sumOfSquares
  }
}

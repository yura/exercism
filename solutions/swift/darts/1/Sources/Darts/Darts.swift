func dartScore(x: Double, y: Double) -> Int {
  let score = (x * x + y * y).squareRoot()
  if score > 10 {
    return 0
  } else if score > 5 {
    return 1
  } else if score > 1 {
    return 5
  } else {
    return 10
  }
}

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let d = diameter else { return nil }
  guard let s = slices else { return nil }

  if d < 0 || s < 1 {
    return nil
  }

  let pi = 3.141592
  let area = pi * d * d / 4
  return area / Double(s)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let aA: Double? = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let aB: Double? = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

  switch (aA, aB) {
    case let (a?, b?):
      if a > b {
        return "Slice A is bigger"
      } else if a < b {
        return "Slice B is bigger"
      } else {
        return "Neither slice is bigger"
      }
    case let (a?, nil):
      return "Slice A is bigger"
    case let (nil, b?):
      return "Slice B is bigger"
    default:
      return "Neither slice is bigger"
  }
}

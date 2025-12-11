class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var result = [String: Int]()
    for (points, letters) in old {
      let points = Int(points)!
      for l in letters {
        result[l.lowercased()] = points
      }
    }
    return result
  }
}

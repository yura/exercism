enum DNAError: Error {
  case wrongLength
}


class Hamming {
  static func compute(_ dnaSequence: String, against: String) throws -> Int? {
    guard dnaSequence.count == against.count else { throw DNAError.wrongLength }

    var distance = 0
    for (s1, s2) in zip(dnaSequence, against) {
      if s1 != s2 {
        distance += 1
      }
    }
    return distance
  }
}

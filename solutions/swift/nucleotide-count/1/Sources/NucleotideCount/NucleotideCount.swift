enum NucleotideCountErrors: Error {
  case invalidNucleotide
}

class DNA {
  var countsMap = ["A": 0, "C": 0, "T": 0, "G": 0]

  init(strand: String) throws {
    for s in strand.map { String($0) } {
      if let count = countsMap[s] {
        countsMap[s] = count + 1
      } else {
        throw NucleotideCountErrors.invalidNucleotide
      }
    }
  }

  func counts() -> [String: Int] { countsMap }
}

import Combine

func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
  Array(Set(inMultiples.filter { $0 > 0 }.map { stride(from: $0, to: limit, by: $0) }.flatMap { $0 })).reduce(0, +)
}

typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

let flip: ChangeClosure = { ($0.1, $0.0, $0.2) }

let rotate: ChangeClosure = { ($0.1, $0.2, $0.0) }

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
  return { (bits: [UInt8], wires: (String, String, String)) -> (String, String, String) in
    var result = wires
    for b in bits.reversed() {
      if b == 0 {
        result = flipper(result)
      } else {
        result = rotate(result)
      }
    }
    return result
  }
}

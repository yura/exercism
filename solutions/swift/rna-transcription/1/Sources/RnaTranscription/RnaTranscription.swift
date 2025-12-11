func toRna(_ dna: String) -> String {
  dna.map { 
    switch $0 {
      case "G": "C"
      case "C": "G"
      case "T": "A"
      default: "U"
    }
  }.joined(separator: "")
}

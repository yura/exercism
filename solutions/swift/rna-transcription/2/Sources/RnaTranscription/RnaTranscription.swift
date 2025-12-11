let dnaToRna: [Character: String] = ["G": "C", "C": "G", "T": "A", "A": "U"]

func toRna(_ dna: String) -> String {
  dna.map { dnaToRna[$0, default: "-"] }.joined(separator: "")
}

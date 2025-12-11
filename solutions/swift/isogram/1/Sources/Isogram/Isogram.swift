func isIsogram(_ string: String) -> Bool {
  let letters = string.lowercased().filter { $0.isLetter }
  return letters.count == Set(letters).count
}

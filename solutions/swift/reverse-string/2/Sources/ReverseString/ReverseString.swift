func reverseString(_ input : String) -> String {
  var result = [String]()
  for i in input {
    result.insert(String(i), at: 0)
  }
  return result.joined()
}

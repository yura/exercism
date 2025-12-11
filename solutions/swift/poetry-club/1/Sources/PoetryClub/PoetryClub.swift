import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  return poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
  var result = ""
  for l in phrase.components(separatedBy: "\n") {
    result += String(l.first ?? "_")
  }
  return result
}

func backDoorPassword(_ phrase: String) -> String {
  var result = ""
  for l in phrase.components(separatedBy: "\n") {
    let l = l.trimmingCharacters(in: .whitespacesAndNewlines)
    result += String(l.last ?? "_")
  }
  return result + ", please"
}

func secretRoomPassword(_ phrase: String) -> String {
  var result = ""
  let lines =  phrase.components(separatedBy: "\n")
  for i in 0..<lines.count {
    let j = lines[i].index(lines[i].startIndex, offsetBy: i)
    result += String(lines[i][j])
  }
  return result.uppercased() + "!"
}

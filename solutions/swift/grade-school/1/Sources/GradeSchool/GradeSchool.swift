class GradeSchool {
  var list = [String: Int]()
  
  func addStudent(_ name: String, grade: Int) -> Bool {
    if list[name] == nil {
      list[name] = grade
      return true
    } else {
      return false
    }
  }

  func roster() -> [String] {
    
    return list.sorted {  $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }.map { $0.0 }
  }

  func studentsInGrade(_ grade: Int) -> [String] {
    var result: [String] = []
    for (n, g) in list {
      if g == grade {
        result.append(n)
      }
    }
    return result.sorted()
  }
}

func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for b in birdsPerDay {
    total += b
  }
  return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  var total = 0
  for i in stride(from: (weekNumber - 1) * 7, to: weekNumber * 7, by: 1) {
    total += birdsPerDay[i]
  }
  return total
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var newLog = birdsPerDay
  for i in stride(from: 0, to: birdsPerDay.count, by: 2) {
    newLog[i] += 1
  }
  return newLog
}

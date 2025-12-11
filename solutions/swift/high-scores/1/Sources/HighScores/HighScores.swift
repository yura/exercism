import Foundation

struct HighScores {
  var scores: [Int]
  var latest: Int
  var personalBest: Int
  var topThree: [Int]

  init(scores: [Int]) {
    self.scores = scores
    self.latest = scores.last ?? -1
    self.personalBest = scores.sorted().last ?? -1
    self.topThree = Array(scores.sorted(by: >).prefix(3))
  }
}

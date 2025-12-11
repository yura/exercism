// TODO: define the 'ranks' constant
let ranks = 1...8
// TODO: define the 'files' constant
let files = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  return ranks.contains(rank) && files.contains(file)
}

func getRow(_ board : [String], rank: Int) -> [String] {
  let from = (rank - 1) * 8
  let to = rank * 8 - 1
  // print("from \(from) \(board[from]) to \(to) \(board[to])")
  return Array(board[from...to])
}

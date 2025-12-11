enum LogLevel: Int {
  case trace, debug, info = 4, warning, error, fatal, unknown = 42

  init(_ log: String) {
    self = .unknown
    let map: [String: Self] = [
      "TRC": .trace, "DBG": .debug, "INF": .info,
      "WRN": .warning, "ERR": .error, "FTL": .fatal
    ]
    for (s, l) in map {
      if log.hasPrefix("[\(s)]") {
        self = l
        break      
      }
    }
  }

  func shortFormat(message: String) -> String {
    return "\(self.rawValue):\(message)"
  }
}

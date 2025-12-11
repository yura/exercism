let times = ["beer": 0.5, "soda": 0.5, "water": 0.5, "shot": 1.0, "mixed drink": 1.5, "fancy drink": 2.5, "frozen drink": 3.0]

func timeToPrepare(drinks: [String]) -> Double {
  var total = 0.0
  for d in drinks {
    if let t = times[d] {
      total += t
    }
  }
  return total
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var cut = 0
  var n = needed

  while n > 0 {
    switch limes[cut] {
      case "small":
        n -= 6
      case "medium":
        n -= 8
      default:
        n -= 10
    }

    cut += 1
  }

  return cut
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var mins = Double(minutesLeft)
  var result: [[String]] = remainingOrders
  while !result.isEmpty {
    let t = timeToPrepare(drinks: result[0])
    if mins >= t {
      mins -= t
      result.remove(at: 0)
    } else {
      break
    }
  }
  return result
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var beer: (first: String, last: String, total: Int)? = nil
  var soda: (first: String, last: String, total: Int)? = nil
  for (d, t) in orders {
    if d == "beer" {
      if beer == nil {
        beer = (first: t, last: t, total: 1)
      } else if let b = beer {
        beer = (first: b.first, last: t, total: b.total + 1)
      }
    } else if d == "soda" {
      if soda == nil {
        soda = (first: t, last: t, total: 1)
      } else if let b = soda {
        soda = (first: b.first, last: t, total: b.total + 1)
      }
    }
  }
  return (beer: beer, soda: soda)
}

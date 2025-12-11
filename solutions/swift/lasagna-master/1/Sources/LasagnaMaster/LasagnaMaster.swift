func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
  return layers.count * 2
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  var sauce = 0.0
  var noodles = 0

  for l in layers {
    if l == "sauce" {
      sauce += 0.2
    } else if l == "noodles" {
      noodles += 1
    }
  }

  return (noodles: noodles * 3, sauce: sauce)
}

func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
  amount.sauce *= 33.814
}

func redWine(layers: String...) -> Bool {
  func count(_ ingridient: String) -> Int {
    var result = 0
    for l in layers {
      if l == ingridient {
        result += 1
      }
    }
    return result
  }

  func mozzarella() -> Int { count("mozzarella") }
  func ricotta() -> Int { count("ricotta") }
  func bechamel() -> Int { count("béchamel") }
  func sauce() -> Int { count("sauce") }
  func meat() -> Int { count("meat") }

  return mozzarella() + ricotta() + bechamel() <= sauce() + meat()
} 

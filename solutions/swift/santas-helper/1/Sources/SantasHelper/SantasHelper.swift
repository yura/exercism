func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name: name, amount: amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  var newItems = items
  for i in 0..<newItems.count {
    if items[i].name == toy {
      newItems[i] = (name: items[i].name, amount: amount)
    }
  }
  return newItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var newItems: [(name: String, amount: Int, category: String)] = []
  for (name, amount) in items {
    newItems.append((name: name, amount: amount, category: category))
  }
  return newItems
}

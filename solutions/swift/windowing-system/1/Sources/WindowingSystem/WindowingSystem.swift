struct Size {
  var width = 80
  var height = 60

  mutating func resize(newWidth: Int, newHeight: Int) {
    self.width = newWidth
    self.height = newHeight
  }
}

struct Position {
  var x = 0
  var y = 0

  mutating func moveTo(newX: Int, newY: Int) {
    self.x += newX
    self.y += newY
  }
}

class Window {
  var title = "New Window"
  var screenSize = Size(width: 800, height: 600)
  var size = Size()
  var position = Position()
  var contents: String? = nil

  init() {}

  init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
    self.title = title
    self.contents = contents
    self.size = size
    self.position = position
  }

  func resize(to: Size) {
    if to.width < 1 {
      self.size.width = 1
    } else {
      self.size.width = self.position.x + to.width > screenSize.width ? screenSize.width - self.position.x : to.width
    }

    if to.height < 1 {
      self.size.height = 1
    } else {
      self.size.height = self.position.y + to.height > screenSize.height ? screenSize.height - self.position.y : to.height
    }
  }

  func move(to: Position) {
    if to.x < 0 {
      self.position.x = 0
    } else {
      self.position.x = to.x + self.size.width > screenSize.width ? screenSize.width - self.size.width : to.x
    }

    if to.y < 0 {
      self.position.y = 0
    } else {
      self.position.y = to.y + self.size.height > screenSize.height ? screenSize.height - self.size.height : to.y
    }
  }

  func update(title: String) {
    self.title = title
  }

  func update(text: String?) {
    self.contents = text
  }

  func display() -> String {
    return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
  }
}

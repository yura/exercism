class SpaceAge {
  let onMercury: Float
  let onVenus: Float
  let onEarth: Float
  let onMars: Float
  let onJupiter: Float
  let onSaturn: Float
  let onUranus: Float
  let onNeptune: Float

  init(_ seconds: Int) {
    self.onEarth = Float(seconds) / (365.25 * 24 * 60 * 60)
    self.onMercury = onEarth / 0.2408467
    self.onVenus = onEarth / 0.61519726
    self.onMars = onEarth / 1.8808158
    self.onJupiter = onEarth / 11.862615
    self.onSaturn = onEarth / 29.447498
    self.onUranus = onEarth / 84.016846
    self.onNeptune = onEarth / 164.79132
  }
}

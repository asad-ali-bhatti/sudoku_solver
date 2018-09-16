class Cell
  attr_accessor :x, :y, :value

  def initialize(x, y, value)
    self.x = x
    self.y = y
    self.value = value
  end

  def box_coords
    @box_coords ||= { x: x / 3, y: y / 3 }
  end
end


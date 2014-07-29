class Package
  def initialize(height, width, length, weight, name)
    @height = height
    @width = width
    @length = length
    @weight = weight
    @name = name
  end

  def name
    @name
  end

  def height
    @height
  end

  def width
    @width
  end

  def volume
    volume = @width * @height * @length
  end

  def cost_to_ship
    cost_to_ship = @weight * self.volume
  end
end

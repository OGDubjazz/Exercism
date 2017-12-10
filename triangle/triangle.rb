class Triangle
  def initialize(sides)
    @sides = sides.sort
  end

  def equilateral?
    valid? && @sides.uniq.size == 1
  end

  def isosceles?
    valid? && @sides.uniq.size <= 2
  end

  def scalene?
    valid? && @sides.uniq.size == 3
  end

  private

  def valid?
    @sides[0] + @sides[1] > @sides[2]
  end
end

module BookKeeping
  VERSION = 1
end
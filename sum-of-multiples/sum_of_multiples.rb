class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(num)
    n =(0...num).select { |n| @multiples.any? { |m| n % m == 0}}.inject(:+)
    n ? n : 0
  end
end
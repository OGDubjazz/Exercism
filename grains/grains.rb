class Grains
  def self.square(n)
    raise ArgumentError.new if n < 1 || n > 64
    1 << n.pred
  end

  def self.total
    0xFFFF_FFFF_FFFF_FFFF
  end
end
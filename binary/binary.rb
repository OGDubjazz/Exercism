class Binary
  def self.to_decimal (binary)
    raise ArgumentError.new("#{binary} is invalid binary input ") if binary =~ /[^01]/

    binary.chars.reverse_each.with_index.map do |x, i|
      x == '0' ? 0 : 2**i
    end.reduce(:+)
  end
end
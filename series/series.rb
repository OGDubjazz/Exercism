class Series
  def initialize(digits)
    @digits = digits
  end
  def slices(slice_length)
    raise ArgumentError if slice_length > @digits.length
    
    digits_substring = []
    until @digits.length < slice_length
      digits_substring << @digits[0...slice_length]
      @digits = @digits[1..-1]
    end
    digits_substring
  end
end
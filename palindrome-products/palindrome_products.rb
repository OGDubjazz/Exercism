class Palindromes
  Product = Struct.new(:value, :factors)

  attr_reader :largest, :smallest

  def initialize(max_factor: 999, min_factor: 1)
    @generated_range = (min_factor..max_factor).to_a
  end

  def generate
    palindromes = Hash.new { |h, k| h[k] = [] }

    @generated_range.repeated_combination(2) do |x, y|
      palindrome_wannabe = x * y
      palindromes[palindrome_wannabe] << [x, y] if is_palindrome?(palindrome_wannabe)
    end

    largest_key = palindromes.keys.max
    @largest = Product.new(largest_key, palindromes[largest_key])

    smallest_key = palindromes.keys.min
    @smallest = Product.new(smallest_key, palindromes[smallest_key])
  end

  private

  def is_palindrome?(number)
    number.to_s.reverse.to_i == number
  end
end
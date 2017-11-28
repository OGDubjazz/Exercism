class Alphametics
  MIN_DIGIT = 0
  MAX_DIGIT = 9

  def self.solve puzzle
    @tokens = puzzle.scan(/\w+/).map{|i| i.chars}
    possible_solutions
      .select {|r| is_valid? r}
      .select {|r| is_solution? r }.first || {}
  end

  def self.possible_solutions
    symbols = @tokens.flatten.uniq
    (MIN_DIGIT..MAX_DIGIT)
      .to_a.permutation(symbols.count)
      .map{ |c| symbols.zip(c).to_h }
  end
  
  def self.is_solution? digits
    sum_parts = @tokens.map {|t| t.map {|i| digits[i].to_s }.join.to_i}
    sum_parts[0..-2].reduce(:+) == sum_parts.last
  end

  def self.is_valid? digits
    @tokens.map {|t| t.map {|i| digits[i]}[0] != 0}.all?
  end

end
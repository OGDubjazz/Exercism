class Sieve
	
  attr_reader :number

  def initialize(number)
    @number = number
  end
  
  def primes
    (2..@number).select { |num| is_prime?(num) }
  end

  def is_prime?(num)
    (2...num).all?{|a| num % a != 0 }
  end

end
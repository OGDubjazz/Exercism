module PrimeFactors
  def self.for(num)
    n = 2
    factors = []
    while 1 < num
      if num % n == 0
        factors << n
        num /= n
      else
        n += 1
      end
    end
    factors
  end
end
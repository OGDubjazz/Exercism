require 'prime'
class Prime
  def nth(n)
  	raise ArgumentError.new if n < 1
  	myprimes = [2, 3]
    counter = 3

    while n > myprimes.length
      counter += 2

      unless myprimes.any? { |prime| counter % prime == 0 }
        myprimes.push(counter)
      end
    end

    myprimes[n - 1]
	end
end

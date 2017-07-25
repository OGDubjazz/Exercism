class Hamming
  def self.compute(x, y)
    unless x.length == y.length
      raise ArgumentError
    end

    diff = 0
    
    x.split("").each_with_index do |element, index|

      if y[index] != element 
        diff = diff + 1
      end
    end

    diff
  end
end
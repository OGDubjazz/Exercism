class RunLengthEncoding
  def self.encode(string)
    string.chars.chunk{|i| i}.map {|chars_value, array| array.length>1 ? [array.length, chars_value ] : [chars_value]}.join
  end

  def self.decode(string)
    string.scan(/(\d+)?(.)/).inject("") do |decoding, (char_length, char)|
      count = char_length ? char_length.to_i : 1
      decoding << char * count
    end
  end
end
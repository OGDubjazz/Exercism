class Brackets
  def self.paired?(string)
    brackets = []
    string.each_char do |ch|
      if '{[('.include? ch
        brackets.push(ch)
      elsif 
        ch == '}' && brackets.pop != '{' ||
        ch == ']' && brackets.pop != '[' ||
        ch == ')' && brackets.pop != '('
        return false
      end
    end
    brackets.empty?
  end
end

class BookKeeping
  VERSION = 4
end

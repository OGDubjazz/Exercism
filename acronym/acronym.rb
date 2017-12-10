class Acronym
  def self.abbreviate text
    text.scan(/\w+/).map {|w| w.chars.first.upcase}.join
  end
end


module BookKeeping
  VERSION = 4 
end
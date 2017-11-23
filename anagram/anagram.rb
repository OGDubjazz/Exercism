class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = @word.chars.sort
  end
  
  def match(words)
    words.select { |match| match.downcase.chars.sort == @letters && match.downcase != @word }
  end
  
end
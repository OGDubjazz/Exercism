class Phrase
  attr_accessor :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    word_count_list = Hash.new(0)
    @sentence.downcase.scan(/\b[^\s,]+\b/) do |word|
      word_count_list[word] += 1
    end
    word_count_list
  end

end
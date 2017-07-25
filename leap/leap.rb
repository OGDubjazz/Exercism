class Year

  def self.leap?(number)
    (number % 4 == 0) && (!(number % 100 == 0) || (number % 400 == 0))
  end
end
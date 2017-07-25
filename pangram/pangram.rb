class Pangram

  def self.pangram?(string)
    alphabet = ('a'..'z').to_a
    string.downcase.split("").each do |char|
      alphabet.delete(char)
    end
    alphabet.empty?
  end
end
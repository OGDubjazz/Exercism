module Complement
  def self.translate strand, key
    strand.split("").map { |n| key[n] }.join("")
  end

  def self.dna_key
    {
      'C' => 'G',
      'G' => 'C',
      'T' => 'A',
      'A' => 'U'
    }
  end

  def self.of_dna strand
    return "" if strand =~ /[^GCTA]/
    translate strand, dna_key
  end
end
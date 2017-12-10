class Nucleotide
  def self.from_dna(text)
    Nucleotide.new(text)
  end

  def initialize(text)
    raise ArgumentError if text.match(/[^ATCG]/)
    @text = text
  end

  def count(nucleotide)
    @text.chars.count { |c| c == nucleotide }
  end

  def histogram
    %w(A T C G).each_with_object({}) do |c, hist|
      hist[c] = count(c)
    end
  end
end

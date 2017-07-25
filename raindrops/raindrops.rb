class Raindrops

  MYFACTORS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def self.convert(number)
    droptop = ''
    MYFACTORS.each do |(key, value)|
      droptop << value if number % key == 0
    end
    droptop.empty? ? number.to_s : droptop
  end
end
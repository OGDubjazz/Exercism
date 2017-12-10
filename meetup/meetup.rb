require 'date'

class Meetup
  DOW = {monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6, sunday: 7}
  MOD = {first: 0, second: 1, third: 2, fourth: 3, fifth: 4}

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(dow, mod)
    case mod
    when :teenth
      date = Date.new(@year, @month, 13)
      date + (7 + DOW[dow] - date.cwday) % 7
    when :last
      date = Date.new(@year, @month).next_month
      date - (7 - (7 + DOW[dow] - date.cwday) % 7)
    else
      date = Date.new(@year, @month)
      date + (7 + DOW[dow] - date.cwday) % 7 + 7 * MOD[mod]
    end
  end
end
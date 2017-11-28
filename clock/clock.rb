class Clock
  attr_accessor :hour, :minute
  
  class << self
    alias_method :at, :new
  end

  def initialize(hour, minute)
    self.hour = hour
    self.minute = minute
    normalize
  end

  def +(extra_mins)
    self.class.new(hour, minute + extra_mins)
  end

  def to_s
    "%02d:%02d" % [hour, minute]
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end

  private

  def normalize
    self.hour += minute / 60
    self.minute = minute % 60
    self.hour = hour % 24
  end
end
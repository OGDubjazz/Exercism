require 'set'
class Robot
  def initialize
    @name = generate_name
  end

  def self.forget
    RobotNames.forget
  end

  def name
    @name
  end

  def reset
    @name = generate_name
  end

  def generate_name
    new_name = random_name
    while RobotNames.names.include? new_name
      new_name = random_name
    end
    RobotNames.names << new_name
    new_name
  end

  def random_name
    random_two_letters + random_three_digits
  end

  def random_two_letters
    [*('A'..'Z')].sample(2).join
  end

  def random_three_digits
    rand.to_s[2..4]
  end
end

module RobotNames
  def self.forget
    @names = Set.new
  end

  def self.names
    @names ||= Set.new
  end
end

module BookKeeping
  VERSION = 3
end

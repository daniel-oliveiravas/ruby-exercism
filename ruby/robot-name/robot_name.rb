module BookKeeping
  VERSION = 2
end

class Robot

  attr_reader :name

  $names = []

  def initialize
    @name = generate_name
    $names += @name
  end

  def reset
    $names -= @name
    @name = generate_name
    NAMES.push(@name)
  end

  private
  def generate_name
    robot_name = generate_letters + generate_numbers
    print "robot_name = #{robot_name} and names = #{$names}"
    until $names.include? robot_name
      robot_name = generate_letters + generate_numbers
    end
    robot_name
  end

  def generate_letters
    letters = ('A'..'Z').to_a
    letters[rand(26)] + letters[rand(26)]
  end

  def generate_numbers
    rand(100..999).to_s
  end

end
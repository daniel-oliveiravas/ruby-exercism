module BookKeeping
  VERSION = 2
end

class Robot
  
  attr_reader :name
  
  $names = []
  
  def initialize
    @name = generate_name
  end
  
  def reset
    $names.delete @name
    @name = generate_name
  end
  
  private
  def generate_name
    robot_name = ''
    robot_name = generate_letters + generate_numbers while $names.include? robot_name
    $names.push robot_name
    robot_name
  end
  
  def generate_letters
    letters = ('A'..'Z').to_a
    letters.sample + letters.sample
  end
  
  def generate_numbers
    rand(100..999).to_s
  end
  
end
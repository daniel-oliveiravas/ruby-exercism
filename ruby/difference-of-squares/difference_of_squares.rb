module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end


class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    ((1..@number).reduce(0, :+) ** 2)
  end

  def sum_of_squares
    ((1..@number).inject(0){ |sum, num| sum + num * num })
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
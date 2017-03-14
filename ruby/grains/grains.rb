class Grains
  
  MAX_NUMBER_OF_SQUARES = 64
  
  # Geometric progression: nth term
  # a(n) = a1 * q**(n-1)
  # In this case, a1 is 1 and the ratio 'q' is 2, so we have:
  def self.square(number_of_square)
    raise ArgumentError unless number_of_square.between?(1,64)
    2 ** (number_of_square - 1)
  end
  
  # Geometric progression: sum's formula
  # S(n) = (a1 ((q ** n) - 1)) / (q - 1)
  # In this case, the ratio 'q' is 2, so simplyfing we have:
  def self.total
    2 ** MAX_NUMBER_OF_SQUARES - 1
  end
end

module BookKeeping
  VERSION = 1
end
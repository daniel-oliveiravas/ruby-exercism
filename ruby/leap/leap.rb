class Year
  
  def self.leap?(year)
    divisible_by_400 = (year % 400).zero?
    not_divisible_by_100 = (year % 100).nonzero?
    divisible_by_4 = (year % 4).zero?
    (divisible_by_4 and not_divisible_by_100) or divisible_by_400
  end
end

module BookKeeping
  VERSION = 2  
end

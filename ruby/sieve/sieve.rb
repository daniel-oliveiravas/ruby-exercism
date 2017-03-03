require 'prime'

class Sieve

  def initialize(final_range)
    @final_range = final_range
  end

  def primes
    (2..@final_range).select {|number| Prime.prime?(number) }
  end

end
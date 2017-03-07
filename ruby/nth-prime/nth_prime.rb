require 'prime'

class Prime

  def Integer.all
    Enumerator.new do |yielder, n: 0|
      loop { yielder.yield(n += 1) }
    end.lazy
  end

  def self.nth(number_of_primes)
    raise ArgumentError if number_of_primes.zero?
    Integer.all.select { |int| is_prime?(int) }.first(number_of_primes).last
  end

  private
  def is_prime?(num)
    return false if num < 2
    (2..Math.sqrt(num)).none? do |index|
      num % index == 0
    end
  end
end

module BookKeeping
  VERSION = 1
end
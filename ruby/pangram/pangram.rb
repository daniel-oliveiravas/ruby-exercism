module BookKeeping
  VERSION = 2
end

class Pangram

  def self.is_pangram?(str)
    result = ('a'..'z').to_a - str.downcase.scan(/[a-zA-Z]/)
    result.empty?
  end
end
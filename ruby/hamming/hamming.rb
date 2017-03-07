class Hamming

  def self.compute(dna, mutation)

    if dna.length != mutation.length
      raise(ArgumentError)
    end

    hamming_distance = 0
    dna.each_char.with_index do |nucleotide, index|
      if nucleotide != mutation[index]
        hamming_distance += 1
      end
    end

    hamming_distance
  end
end
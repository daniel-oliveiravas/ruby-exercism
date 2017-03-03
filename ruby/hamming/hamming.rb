class Hamming

  def self.compute(dna, mutation)

    if(dna.length != mutation.length)
      raise(ArgumentError)
    end

    dna_nucleotides = dna.split('')
    mutation_nucleotides = mutation.split('')

    hamming_distance = 0
    dna_nucleotides.each_with_index { |nucleotide, index|
      if (nucleotide != mutation_nucleotides[index])
        hamming_distance += 1
      end
    }

    hamming_distance
  end
end
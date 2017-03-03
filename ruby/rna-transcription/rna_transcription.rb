class Complement

  DNA_TO_RNA = {
      "G": "C",
      "C": "G",
      "T": "A",
      "A": "U"
  }
  # def self.of_dna(dna_strand)
  #   rna_strand = ''
  #   dna_strand.each_char { |nucleotide|
  #     return '' if DNA_TO_RNA[nucleotide.to_sym].nil?
  #     rna_strand += DNA_TO_RNA[nucleotide.to_sym]
  #   }
  #   rna_strand
  # end
  def self.of_dna(chain)
    /[^GCTA]/ =~ chain ? '' : chain.tr('GCTA', 'CGAU')
  end
end
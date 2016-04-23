class DNA
  attr_reader :dna

  def initialize(dna = nil)
    @dna = dna
  end

  def hamming_distance(dna)

  end

end


# take original strand, split into array
# take comparable strand(distance), split into different array
# iterate through each comparing identical element indexes to eachother
# if indexes don't match, += counter that starts at 0
# if 1 strand shorter than another, 

class Complement

  def self.of_dna(elements)
    map_complements(elements, "dna")
  end

  def self.of_rna(elements)
    map_complements(elements, "rna")
  end

  def self.map_complements(elements, type)
    element = elements.chars
    complement = element.map do |e|
      element_pairs(e, type)
    end
    complement.join
  end

  def self.element_pairs(e, type = nil)
    if e    == "C"
      "G"
    elsif e == "G"
      "C"
    elsif e == "T"
      type  == "dna" ? "A" : raise(ArgumentError)
    elsif e == "U"
      type  == "rna" ? "A" : raise(ArgumentError)
    elsif e == "A"
      type  == "rna" ? "T" : "U"
    else
      raise(ArgumentError)
    end
  end

end

Complement::VERSION = 1

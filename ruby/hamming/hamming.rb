class Hamming

  def self.compare_strands(a, b)
    errors = 0
    a_acids = a.chars
    b_acids = b.chars

    a.length.times do |i|
      if a_acids[i] != b_acids[i]
        errors +=1
      end
    end
    errors
  end

  def self.compute(a, b)
    if a.length == b.length
      compare_strands(a, b)
    else
      raise ArgumentError.new("Please test two strands of equal length")
    end
  end

end

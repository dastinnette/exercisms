class Hamming

  def self.compute(sequence_1, sequence_2)

    # if (sequence_1 > sequence_2)
    #   loop_length = sequence_2.length
    # else
    #   loop_length = sequence_1.length
    # end
    if sequence_1.length != sequence_2.length
      raise(ArgumentError)
    end

    loop_length = sequence_1.length

    counter = 0
    loop_length.times do |x|
      if sequence_1[x] != sequence_2[x]
        counter += 1
      end
    end
    counter
  end

end

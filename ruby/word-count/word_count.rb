class Phrase

  attr_reader :input, :hash

  def initialize(input)
    @input = input
    @hash  = Hash.new
    @count = 0
  end

  def word_count
    if @count == 1
        hash
      else
        @count = 1
      input.gsub(/[!@{$%^&*-+?:.,]/, ' ').downcase.split(' ').map do |word|
        hash[word].nil? ? hash[word] = 1 : hash[word] += 1
      end
      hash
    end
  end
end

p = Phrase.new('all the kings horses and all the kings men')
p.word_count

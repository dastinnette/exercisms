class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def format_phrase(phrase)
    phrase.downcase.gsub(/[.,!:;&@$%^]/, ' ')
  end

  def word_count
    counts = Hash.new(0)
    format_phrase(phrase).split.each { |word| counts[word] += 1 }
    counts
  end
end

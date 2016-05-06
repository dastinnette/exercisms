class Squares
  attr_reader :range

  def initialize(quantity)
    @range = 1.upto(quantity)
  end

  def square_of_sum
    range.reduce(0,:+) ** 2
  end

  def sum_of_squares
    range.map(&:abs2).reduce(0,:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

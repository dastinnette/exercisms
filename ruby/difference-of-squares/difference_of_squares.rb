class Squares
  attr_reader :range, :square_of_sum, :sum_of_squares, :difference

  def initialize(num)
    @range = 1.upto(num)
    @square_of_sum = @range.reduce(0,:+)**2
    @sum_of_squares = @range.collect(&:abs2).reduce(0,:+)
    @difference = @square_of_sum - @sum_of_squares
  end
end

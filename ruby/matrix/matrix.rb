class Matrix

  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    matrix.chars.map do |element|
      row = []
      row << element
    end
  end

  def columns

  end

end

# m = Matrix.new
# m.rows

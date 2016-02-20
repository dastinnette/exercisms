class Cell

  attr_accessor :position, :alive
  attr_reader :board_size, :vertical

  def initialize(board_size, position)
    @board_size = board_size
    @position   = position
    @alive      = false
    @vertical   = Math.sqrt(board_size)
  end

  def top
    position - vertical
  end

  def top_right
    top + 1
  end

  def top_left
    top - 1
  end

  def bottom
    vertical + position
  end

  def bottom_right
    bottom + 1
  end

  def bottom_left
    bottom - 1
  end

  def right
    position + 1
  end

  def left
    position - 1
  end

end

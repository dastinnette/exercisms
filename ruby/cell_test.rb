require 'minitest/pride'
require 'minitest/autorun'
require './cell'

class CellTest < Minitest::Test
  include Math

  def test_cell_knows_where_its_at
    cell = Cell.new(25, 13)
    assert_equal 13, cell.position
  end

  def test_cell_knows_the_board_size
    cell = Cell.new(25, 13)
    assert_equal 25, cell.board_size
  end

  def test_cell_knows_if_it_is_alive_or_dead
    cell = Cell.new(25, 13)
    refute cell.alive
  end

  def test_that_a_cell_can_be_made_alve
    cell = Cell.new(25, 13)
    cell.alive = true
    assert cell.alive
  end

  def test_that_a_cell_can_be_killed
    cell = Cell.new(25, 13)
    cell.alive = true
    cell.alive = false
    refute cell.alive
  end

  def test_cell_knows_position_one_space_above_square_grid
    cell = Cell.new(25, 13)
    assert_equal 5, cell.vertical
    assert_equal 8, cell.top
  end

  def test_cell_knows_position_one_space_below_on_square_grid
    cell = Cell.new(25, 13)
    assert_equal 5, cell.vertical
    assert_equal 18, cell.bottom
  end

  def test_cell_has_universal_awareness
    omnipotent_one = Cell.new(25, 14)
    assert_equal 5, omnipotent_one.vertical
    assert_equal 19, omnipotent_one.bottom
    assert_equal 20, omnipotent_one.bottom_right
    assert_equal 18, omnipotent_one.bottom_left
    assert_equal 13, omnipotent_one.left
    assert_equal 15, omnipotent_one.right
    assert_equal 10, omnipotent_one.top_right
    assert_equal 8,  omnipotent_one.top_left
  end

end

# frozen_string_literal: true

class GameLogic
  def initialize
    @board = nil
  end

  WINNING_MOVES = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [6, 4, 2],
    [0, 4, 8]
  ].freeze

  def won?
    WINNING_MOVES.detect do |combo|
      @board[combo[0]] == @board[combo[1]] &&
        @board[combo[1]] == @board[combo[2]] &&
        space_filled?(combo[0])
    end
  end

  def init_board(grid)
    @board = Array.new(grid) { ' ' }
  end

  def set_input(index, input = 'X')
    @board[index] = input
  end

  def space_filled?(index)
    @board[index] == 'X' || @board[index] == 'O'
  end

  def board_index(input_index)
    input_index.to_i - 1
  end
end

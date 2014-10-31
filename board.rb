require_relative 'pawn'

class Board
  attr_reader :board

  def initialize
    @board = place_pieces(create_board)
  end

  def create_board
    initial_board = []
    8.times do |i|
      column = []
      8.times do |j|
        column << []
      end
      initial_board << column
    end
    initial_board
  end

  def place_pieces(board)
    board[1][0] = Pawn.new
    board
  end

  def has_pieces?
    true
  end
end

board = Board.new
board.board

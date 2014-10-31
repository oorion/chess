require_relative 'pawn'
require_relative 'king'
require_relative 'piece'

class Board
  attr_reader :board_pieces

  def initialize
    place_pieces
  end

  #Should the board or the piece store the location information?
  def place_pieces
    @board_pieces = (0..7).flat_map do |i|
        [Pawn.new(:black, 1, i), Pawn.new(:white, 6, i)]
    end
    board_pieces << King.new(:black, 0, 4)
    board_pieces << King.new(:white, 7, 4)
  end

  def to_s
    "\n" + raw_board + "\n"
  end

  def raw_board
    (0..7).map do |i|
      (0..7).map do |j|
        item = find_item(i, j)
        item.class.superclass == Piece ? item.to_s : "- "
      end.join
    end.join("\n")
  end

  def find_item(i, j)
    board_pieces.find do |piece|
      piece.row == i && piece.column == j
    end
  end
end

board = Board.new
board.to_s

require_relative 'pawn'
require_relative 'king'
require_relative 'piece'

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


  #Should the board or the piece store the location information?
  def place_pieces(board)
    (0..7).each do |i|
        board[1][i] = Pawn.new('black', 1, i)
        board[6][i] = Pawn.new('white', 6, i)
    end
    board[0][4] = King.new('black', 0, 4)
    board[7][4] = King.new('white', 7, 4)
    board
  end

  def has_pieces?
    true
  end

  def to_s
    returned_board = ''
    puts "\n"
    board.each do |row|
      row.each do |item|
        if item.class.superclass == Piece
          print item.to_s
          returned_board << item.to_s
        else
          print "- "
          returned_board << "- "
        end
      end
      print "\n"
    end
    puts "\n"
    returned_board
  end
end

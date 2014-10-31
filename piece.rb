class Piece
  attr_reader :color, :row, :column

  def initialize(color="?", row=0, column=0)
    @color = color
    @row = row
    @column = column
  end
end

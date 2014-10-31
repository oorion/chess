require_relative 'board'
require_relative 'pawn'

describe Board do
  before do
    @board = Board.new
  end

  it "is an array" do
    expect(@board.board).to be_instance_of(Array)
  end

  it "has 8 rows" do
    expect(@board.board.length).to eql(8)
  end

  it "has 8 columns" do
    expect(@board.board.transpose.length).to eql(8)
  end

  it "places pieces on board at beginning of game" do
    expect(@board.has_pieces?).to be_truthy
  end

  it "has a pawn in the second row first column at the beginning of the game" do
    expect(@board.board[1][0]).to be_instance_of(Pawn)
  end
end

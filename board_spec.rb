require_relative 'board'

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

  it "has a pawn in the last column of the second row at the beginning of the game" do
    expect(@board.board[1][7]).to be_instance_of(Pawn)
  end

  it "has pieces that can be printed" do
    expect(Pawn.new.to_s).to eql('p ')
    expect(King.new.to_s).to eql('K ')
  end

  it "has a valid initial state when printed" do
    expect(@board.to_s).to eql('- - - - K - - - p p p p p p p p - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - p p p p p p p p - - - - K - - - ')
  end
end

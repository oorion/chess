require_relative 'board'

describe Board do
  before do
    @board = Board.new
  end

  it "has a pawn in the second row first column at the beginning of the game" do
    expect(@board.find_item(1, 0)).to be_instance_of(Pawn)
  end

  it "has a pawn in the last column of the second row at the beginning of the game" do
    expect(@board.find_item(1, 7)).to be_instance_of(Pawn)
  end

  it "has pieces that can be printed" do
    expect(Pawn.new.to_s).to eql('p ')
    expect(King.new.to_s).to eql('K ')
  end

  it "has a valid initial state when printed" do
    puts @board.to_s
    expect(@board.to_s.gsub("\n", '')).to eql('- - - - K - - - p p p p p p p p - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - p p p p p p p p - - - - K - - - ')
  end
end

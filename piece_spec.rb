require_relative 'piece'

describe Piece do
  before do
    @piece = Piece.new('white', 0, 0)
  end

  it "has a color" do
    expect(@piece.color).to eql('white')
  end

  it "has a position that includes a row and column" do
      expect(@piece.row).to eql(0)
      expect(@piece.column).to eql(0)
  end
end

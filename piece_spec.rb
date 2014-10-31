require_relative 'piece'

describe Piece do
  before do
    @piece = Piece.new
  end

  it "has an array position" do
    expect(@piece.position).to be_instance_of(Array)
  end

  it "has a position with two elements" do
    expect(@piece.position.length).to eql(2)
  end

  # it "only contains position elements between 0 and 7" do
  #   expect(@piece.position[0]).to be_between(0, 7).inclusive
  #   expect(@piece.position[1]).to be_between(0, 7).inclusive
  # end
end

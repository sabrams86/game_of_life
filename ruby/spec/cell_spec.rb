require './main/cell'
require 'rspec'

RSpec.describe Cell do
  context "starting cell" do
    before :each do
      @cell = Cell.new(0,1)
    end
    describe "default params" do
      it "has a default position" do
        expect(@cell.xPos).to eq(0)
        expect(@cell.yPos).to eq(1)
      end
    end
  end
end

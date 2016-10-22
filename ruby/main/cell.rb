class Cell
  attr_reader :xPos, :yPos, :neighbors

  def initialize(x,y)
    @xPos = x
    @yPos = y
    @neighbors = 0
  end

end

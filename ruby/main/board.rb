class Board

  attr_reader :length, :height

  def initialize(length, height)
    @length = length
    @height = height
  end

  def visualize(cells)
    (0..height-1).each do |y|
      (0..length-1).each do |x|
        print cells.include?([x,y]) ? "*" : "-"
        print " "
      end
      puts
    end
  end

  def calculate(cells)
    birthed = Array.new
    survived = Array.new
    (0..height-1).each do |y|
      (0..length-1).each do |x|
        neighbors = calculateNeighbors(cells, x,y)
        if(cells.include?([x,y]))
          survived.push([x,y]) if neighbors == 2 || neighbors == 3
        else
          birthed.push([x,y]) if neighbors == 3
        end
      end
    end
    return birthed + survived
  end

  def calculateNeighbors(cells, x,y)
    neighbors = 0
    # top row
    neighbors = neighbors + 1 if cells.include([x-1, y+1])
    neighbors = neighbors + 1 if cells.include([x, y+1])
    neighbors = neighbors + 1 if cells.include([x+1, y+1])
    # middle row
    neighbors = neighbors + 1 if cells.include([x, y-1])
    neighbors = neighbors + 1 if cells.include([x, y+1])
    # bottom row
    neighbors = neighbors + 1 if cells.include([x-1, y-1])
    neighbors = neighbors + 1 if cells.include([x, y-1])
    neighbors = neighbors + 1 if cells.include([x+1, y-1])
    return neighbors
  end

end

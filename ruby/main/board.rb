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

end

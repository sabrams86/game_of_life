require './main/cell'
require './main/board'

class Game
  attr_reader :board, :generations
  attr_accessor :cells
  def initialize(startingCells, generations, length, height)
    @cells = startingCells # array of arrays of x,y coords [[1,3],[2,3],[0,2]]
    @generations = generations # number of iterations to run the game for
    @board = Board.new(length, height)
  end

  def start
    (1..generations).each do |i|
      puts "========================== GENERATION #{i} =========================="
      board.visualize(cells)
      evolve
    end
  end

  def evolve
    self.cells = board.calculate(cells)
  end

end

class Board
  
  POSITIONS = {"A" => 0, "B" => 1, "C" => 2, "1" => 0, "2" => 1, "3" => 2}

	attr_accessor :grid

	def initialize
		@grid = [[" "," "," "],[" "," "," "],[" "," "," "]]
	end

	def draw_grid
		puts "          A   B   C"
		puts ""
		puts "        +---+---+---+"
		puts "    1   | #{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]} |"
		puts "        +---+---+---+"
		puts "    2   | #{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]} |"
		puts "        +---+---+---+"
		puts "    3   | #{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]} |"
		puts "        +---+---+---+"
	end
  
  def make_move(position)
    column, row = position.upcase.split("")
    grid[POSITIONS[column]][POSITIONS[row]] = "X"
  end
  
end


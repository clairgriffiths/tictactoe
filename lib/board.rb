class Board
  #require_relative 'player' - not needed

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

  def update(position, token)
    row, column = position.upcase.split("")
    grid[POSITIONS[column]][POSITIONS[row]] = token
  end
  
  def full?
    !grid.flatten.include?(" ")
  end
  
  def winner?
    true if winner_name != false
  end
  
  def winner_name
    if row_winner(@grid) != false
      row_winner(@grid)
    elsif column_winner(@grid) != false
      column_winner(@grid)
    elsif diagonal_winner(@grid) != false
      diagonal_winner(@grid)
    else
      false
    end
  end
  
  def row_winner(grid)
    (0..2).map do |num|
      if grid[num].all?{|cell| cell == "X"}
        return "X"
      elsif
        grid[num].all?{|cell| cell == "O"}
        return "O"
      end
    end
    false
  end
  
  def column_winner(grid)
    (0..2).each do |col|
      column = []
      (0..2).each do |row|
        column << grid[row][col]
       end
      if column.all?{|cell| cell == "X"}
        return "X"
      elsif
        column.all?{|cell| cell == "O"}
      return "O"
      end
     end
    false
  end
  
  def diagonal_winner(grid)
    diags = [[grid[0][0], grid[1][1], grid[2][2]], [grid[0][2], grid[1][1], grid[2][0]]]
    diags.map do |diag|
      if diag.all?{|cell| cell == "X"}
         return "X"
       elsif diag.all?{|cell| cell == "O"}
        return "O"
      end
    end
   false
  end
  
   def location_free(location)
    row, column = location.upcase.split("")
    grid[POSITIONS[column]][POSITIONS[row]] == " "
  end
  
end

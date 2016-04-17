require_relative 'board'
require_relative 'player'

class Game 

  attr_accessor :board, :player

  def initialize
    @board = Board.new
    @player = Player.new
    gameplay
  end

  def gameplay
    @player.choose_token
    @board.draw_grid
    # until winner
    choose_position
    # computer_choice
    @board.draw_grid
  end

  def choose_position
    p "Where do you want to move?"
    position = gets.chomp
    board.make_move(position, @player)
  end

end

# To run
#new_game = Game.new


require_relative 'board'
require_relative 'player'
require_relative 'computer'

class Game 

  attr_accessor :board, :player

  def initialize
    @board = Board.new
    @player = Player.new
    @computer = Computer.new
    setup
  end

  def setup
    @player.choose_token
    @computer.get_token(@player.player_token)
    p "Player token: #{@player.player_token}"
    @board.draw_grid
    move
  end
  
  def move
    until end_game?
      player_move unless end_game? != false
      comp_move unless end_game? != false
      @board.draw_grid
    end
  end
  
  def player_move
    location = @player.choose_location
    until @board.location_free(location)
      p "That space is taken, please choose another space"
      location = @player.choose_location
    end
    @board.update(location, @player.player_token)
    
  end
  
  def comp_move
    comp_location = @computer.location
    until @board.location_free(comp_location)
      comp_location = @computer.location
    end
    @board.update(comp_location, @computer.computer_token)
  end

  def end_game?
    if @board.winner?
      p "#{@board.winner_name} wins!"
      true
    elsif @board.full?
      p "The game is a draw"
      true
    else
      false
    end
  end

  
  
  
  

end

# To run
new_game = Game.new


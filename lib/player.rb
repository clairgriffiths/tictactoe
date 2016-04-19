class Player 

  attr_accessor :token_choice

  def initialize
  end

  def choose_token
    print "Which player do you want to be? X or O?"
    @player_token = gets.chomp.upcase
    unless @player_token == "X" || @player_token == "O"
      p "That isn't a valid choice, please choose X or O"
      @player_token = gets.chomp.upcase
    end
  end

  def player_token 
    @player_token
  end
  
  def choose_location
    p "Where do you want to move?"
    @position = gets.chomp
    # if not a valid choice e.g. f4 
  end

end




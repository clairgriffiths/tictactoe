class Computer
  
  def initialize
    
  end
  
  def get_token(player_token)
    if @player_token == "X"
      @computer_token = "0"
    else
      @computer_token = "X"
    end
  end
  
  def computer_token
    @computer_token
  end
  
  def location
    choice = []
    choice << ["A","B","C"].sample
    choice << ["1", "2", "3"].sample
    choice.join("")
  end
  
end

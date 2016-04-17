require 'spec_helper'


describe Player do 
	describe ".choose_token" do
		let(:player) {Player.new}

		it "asks the player to choose X or Y" do
			 expect {player.choose_token}.to output("Which player do you want to be? X or O?").to_stdout
		end

		it "asks again if the answer is not X or Y" do
		end

		it "assigns the player's choice to token_choice" do
		end

	end
end
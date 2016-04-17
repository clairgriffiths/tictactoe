require 'spec_helper'


describe Game do
	describe ".new" do
		let(:new_game) {Game.new}

		it "creates a new Board with an empty grid" do
		#	expect(new_game.board.grid).to eq([["","",""],["","",""],["","",""]])
		end

		it "creates a new Player" do
		#	expect(new_game.player).to be_an_instance_of(Player)
		end

		it "runs the choose_token method on player" do
		end

	end
	
end

require_relative '../game/game.rb'

describe 'game bowling' do

    it "game started" do
        game =Game.new
        expect(game.rolls).to eq(1) 
    end
    it "score is 0" do
        game =Game.new
        expect(game.score).to eq(0) 
    end
end
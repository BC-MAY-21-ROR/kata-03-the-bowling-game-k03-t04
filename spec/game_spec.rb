require_relative '../game/game.rb'

describe 'start game bowling' do

    it "game started" do
        game =Game.new
        expect(game.rolls[0]).to (nil) 
    end
    it "score is 0" do
        game =Game.new
        expect(game.score).to eq(0) 
    end
    
end

describe 'bowling game behavior' do

    before do
        @game = BowlingGame.new
    end

    it('can roll gutter game') do
        20.times{@game.pines 0}
        expect(@game.score).to eq 20
    end

    it('can roll all ones') do
        20.times{@game.pines 1}
        expect(@game.score).to eq 20
    end

    it('can roll a spare') do
        @game.pines 5
        @game.pines 5
        @game.pines 3
        17.times{@game.pines 0}
        expect(@game.score).to eq 16
    end

    it('can roll a strike') do
        @game.pines 10
        @game.pines 4
        @game.pines 3
        16.times{@game.pines 0}
        expect(@game.score).to eq 24
    end

    it('can roll a perfect game') do
        12.times{@game.pines 10}
        expect(@game.score).to eq 300
    end

    it('can roll alls spares') do
        21.times{@game.pines 5}
        expect(@game.score).to eq 150
    end

end
# frozen_string_literal: true

require_relative 'score'

# this class is the principal to run the game
class Game
  attr_reader :rolls, :score

  def initialize
    @rolls = []
    @score = 0
  end

  def pines(pines_knocks)
    @rolls.push(pines_knocks)
  end


  def start
    score_board = Score.new(@rolls)
    cont_roll = 0
    10.times do
      if score_board.strike?(cont_roll, rolls)
        @score += score_board.strikeScore(cont_roll, rolls)
        cont_roll += 1
      elsif score_board.spare?(cont_roll, score_board.rolls)
        @score += score_board.spareScore(cont_roll, rolls)
        cont_roll += 2
      else
        @score += score_board.frameScores(cont_roll, rolls)
        cont_roll += 2
      end
    end
    @score
  end
end


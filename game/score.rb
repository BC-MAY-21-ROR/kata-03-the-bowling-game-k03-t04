# frozen_string_literal: true

# this class help to calculate the score
class Score
  attr_reader :rolls

  def initialize(rolls)
    @rolls = rolls
  end

  def spare?(cont_roll, roll)
    roll[cont_roll] + roll[cont_roll + 1] == 10
  end

  def strike?(cont_roll, _rolls)
    @rolls[cont_roll] == 10
  end

  def strikeScore(cont_roll, _rolls)
    10 + @rolls[cont_roll + 1] + @rolls[cont_roll + 2]
  end

  def spareScore(cont_roll, _rolls)
    10 + @rolls[cont_roll + 2]
  end

  def frameScores(cont_roll, _rolls)
    @rolls[cont_roll] + @rolls[cont_roll + 1]
  end
end

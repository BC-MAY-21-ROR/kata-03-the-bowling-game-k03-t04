class Score 
  def initialize(rolls)  
    @rolls=rolls
  end

  def spare? cont_roll
    @rolls[cont_roll] + @rolls[cont_roll + 1] == 10
  end

  def strike? cont_roll
    @rolls[cont_roll] == 10
  end

  def strikeScore cont_roll
    10 + @rolls[cont_roll + 1] + @rolls[cont_roll + 2]
  end

  def spareScore cont_roll
    10 + @rolls[cont_roll + 2]
  end

  def frameScores cont_roll
    @rolls[cont_roll] + @rolls[cont_roll + 1]
  end

end
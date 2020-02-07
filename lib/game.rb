require './lib/player.rb'

class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @turns = [(@player1 = player1), (@player2 = player2)]
    @counter = 0
    @current_turn = @turns[@counter]
  end

  def attack
    @current_turn.attacked
    switch_turn
  end

  def switch_turn
    @counter = (@counter - 1).abs
    @current_turn = @turns[@counter]
  end

end

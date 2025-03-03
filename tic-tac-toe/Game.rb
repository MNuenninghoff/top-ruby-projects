require_relative 'board.rb'
require_relative 'player.rb'

class Game
    
  def initialize
    @board = Board.new()
    @player1 = Player.new()
    @player2 = Player.new()
  end

  def play_game
    start_game
  end

  def start_game
    puts "Player 1, choose your symbol"
    @player1.symbol = gets.chomp
    puts "Player 2, choose your symbol"
    @player2.symbol = gets.chomp
  end
end
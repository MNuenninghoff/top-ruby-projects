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
    make_moves
  end

  def start_game
    puts "Player 1, choose your symbol"
    @player1.chooseSymbol
    puts "Player 2, choose your symbol"
    @player2.chooseSymbol
  end

  def make_moves

    win_condition = false
    turn = 0

    until win_condition
      puts
      puts "Turn #{turn}"
    
      # TODO: if site is already occupied, loop until valid move is made
      if turn.even?
        puts "Player 1 - Make your move!"
        @board.display_board
        @board.make_move(gets.chomp, @player1)
      else
        puts "Player 2 - Make your move!"
        @board.display_board
        @board.make_move(gets.chomp, @player2)
      end

      # TODO: check if game has been won
      turn += 1
    end
  end
end
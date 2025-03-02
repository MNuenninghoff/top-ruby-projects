require_relative 'board.rb'
require_relative 'player.rb'

win_condition = false
turn = 0

player1 = Player.new()
board = Board.new()
player2 = Player.new()


# TODO: put in loop to prevent improper input
puts "Player 1, choose your symbol"
player1.symbol = gets.chomp
puts "Player 2, choose your symbol"
player2.symbol = gets.chomp

until win_condition
  puts
  puts "Turn #{turn}"

  # TODO: if site is already occupied, loop until valid move is made
  if turn.even?
    puts "Player 1 - Make your move!"
    board.display_board
    board.make_move(gets.chomp, player1)
  else
    puts "Player 2 - Make your move!"
    board.display_board
    board.make_move(gets.chomp, player2)
  end
  turn += 1
end
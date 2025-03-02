require_relative 'player.rb'
require_relative 'board.rb'

class Board
    def initialize
      @board = Array.new(3, Array.new(3, "-"))
      @player1 = Player.new()
      @palyer2 = Player.new()
    end

    def display_board
      put "1 2 3"
      board.each_with_index do |row, index|
        print "#{(index + 65).chr} "
        row.each do |space|
          print "#{space} "
        end
      end
    end
end
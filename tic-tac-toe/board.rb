require_relative 'player.rb'
require_relative 'board.rb'

class Board
    def initialize
      @board = Array.new(3) { Array.new(3, "-")}
    end

    def display_board
      puts "\t1\t2\t3"
      @board.each_with_index do |row, index|
        print "#{(index + 65).chr}\t"
        row.each do |space|
          print "#{space}\t"
        end
        puts
      end
    end

    def make_move(location, player)
      location_array = location.split("")
      row = location_array[0].ord - 65
      col = location_array[1].to_i - 1

      if (@board[row][col] == "-")
        @board[row][col] = player.symbol
      else
        p "Space #{location} has already been played"
        return "E"
      end
    end
end
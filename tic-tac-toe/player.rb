class Player
  attr_accessor :symbol

  def initialize
    @symbol = ""
  end

  def chooseSymbol

    proceed = false

    until proceed
      @symbol = gets.chomp

      if @symbol.length == 1 && @symbol != '-'
        proceed = true
      else
        puts "Please enter a single character that is not '-'"
      end
    end  
  end
end
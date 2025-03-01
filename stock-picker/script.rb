def stock_picker(prices) 
  best_profit = prices[1] - prices[0];
  best_days = [0, 1]
  #Calculate profit for every valid combination
  prices.each_with_index do |buy_price, buy_day|
     for sell_day in (buy_day + 1)..(prices.length - 1)
        profit = (prices[sell_day] - buy_price)
        if (profit > best_profit)
          best_profit = profit
          best_days = [buy_day, sell_day]
        end
     end  
  end
  best_days
end

def calculate_profit(buy_price, sell_price)
    profit = sell_price - buy_price
    profit
end

# some basic tests
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p "Expected: [1, 4], returned #{stock_picker(prices)}"
prices = [1, 1, 1, 1, 1, 1, 1, 1, 0, 10]
p "Expected: [8, 9], returned #{stock_picker(prices)}"
def stock_picker(prices)
    min_price_index = 0
    max_profit = 0
    buy_day = 0
    sell_day = 0
  
    prices.each_with_index do |price, day|
        if price < prices[min_price_index]
            min_price_index = day
        elsif price - prices[min_price_index] > max_profit
            max_profit = price - prices[min_price_index]
            buy_day = min_price_index
            sell_day = day
        end
    end
  
    if max_profit == 0
        return []
    else
        return [buy_day, sell_day]
    end
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
best_days = stock_picker(prices)
puts "The best days to buy is day #{best_days[0]} and the best day to sell is day #{best_days[1]}."
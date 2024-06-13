def stock_picker(prices)
  min_price_day = 0
  best_buy_day = 0
  best_sell_day = 1
  best_profit = prices[best_sell_day] - prices[best_buy_day]


  (1...prices.length - 1).each do |current_day|
    potential_profit = prices[current_day] - prices[min_price_day]

    if potential_profit > best_profit
      best_buy_day = min_price_day
      best_sell_day = current_day
      best_profit = potential_profit
    end

    if prices[current_day] < prices[min_price_day]
      min_price_day = current_day
    end
  end

  [best_buy_day, best_sell_day]
end

# p stock_picker([17,3,6,9,15,8,6,1,10])

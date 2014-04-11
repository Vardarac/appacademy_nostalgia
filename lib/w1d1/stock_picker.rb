def stock_picker stock_data
  largest_profit = 0
  days = []
  stock_data.each_with_index do |buy_price, buy_day|
    stock_data.each_with_index do |sell_price, sell_day|
      next if sell_day <= buy_day
      if sell_price - buy_price > largest_profit
        days = [buy_day, sell_day]
        largest_profit = sell_price - buy_price
      end
    end   
  end
  return days
end
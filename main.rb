def stock_picker(prices)
  prices_minmax = prices.minmax
  prices_minmax = remove_first_day_max(prices, prices_minmax[1]) if prices_minmax[1] == prices[0]
  prices_minmax = remove_last_day_min(prices, prices_minmax[0]) if prices_minmax[0] == prices[prices.length]
end

def remove_first_day_max(prices_array, max_value)
  new_prices_array = prices_array.select { |value| value < max_value }
  new_prices_array.minmax
end

def remove_last_day_min(prices_array, min_value)
  new_prices_array = prices_array.select { |value| value > min_value }
  new_prices_array.minmax
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

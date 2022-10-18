def stock_picker(day_prices);
  new_max = 0
  new_min = 0
  day_prices.max(day_prices.length).each do |max|
    day_prices.min(day_prices.length).each do |min|
      next if max == day_prices[0] || min == day_prices[-1]

      if (day_prices.index(max) > day_prices.index(min)) && (max - min) > (new_max - new_min)
        new_max = max
        new_min = min
      end
    end
  end
  [day_prices.index(new_min), day_prices.index(new_max)]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 10, 1])

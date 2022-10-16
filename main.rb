# def stock_picker(day_prices);


# puts stock_picker([17, 3, 6, 9, 15, 8, 6, 10, 1])

array = [17, 3, 6, 9, 15, 8, 6, 1, 10]

array_max = array.max(array.length)
array_min = array.min(array.length)
new_max = 0
new_min = 0

array_max.each do |max|
  array_min.each do |min|
    next if max == array[0] || min == array[-1]

    if (array.index(max) > array.index(min)) && (max - min) > (new_max - new_min)
      new_max = max
      new_min = min
    end
  end
end

puts [array.index(new_min), array.index(new_max)]

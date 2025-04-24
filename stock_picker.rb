# Pseudo code - stockpicker
# Checks the best day to buy and best day to sell. 
# Best day to buy is the lowest
# Best day to sell is the highest 
# Buy must come first and the range has to be largest.
# Avoid buying on the last day. 

require "pry-byebug"

def max_difference (array) 
  max_value = 0 
  buy_sell_day = [] 

  array.each_with_index do |element_1, index_1|
    array.each_with_index do |element_2, index_2|
      value = element_2 - element_1
      if index_2>index_1 && value > max_value 
        buy_sell_day[0] = index_1 
        buy_sell_day[1] = index_2
        max_value = value 
      end
    end
  end
  return buy_sell_day
end

puts max_difference([17,3,6,9,15,8,6,1,10])


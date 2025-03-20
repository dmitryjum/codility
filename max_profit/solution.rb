require 'pry'

def solution(a)
  max_profit = 0
  cal_length = a.length
  a[0...cal_length -1].each_with_index do |price, day|
    best_sell_price = a[day + 1...cal_length].max
    cycle_profit = best_sell_price - price
    max_profit = cycle_profit if max_profit < cycle_profit
  end
  max_profit
end

puts solution([23171, 21011, 21123, 21366, 21013, 21367])
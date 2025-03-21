require 'pry'

def solution(a)
  max_profit = 0
  best_buy_price = Float::INFINITY
  a[0...a.length-1].each_with_index do |price, day|
    best_buy_price = price if price < best_buy_price
    cycle_profit = a[day + 1] - best_buy_price
    max_profit = cycle_profit if max_profit < cycle_profit
  end
  max_profit
end

puts solution([23171, 21011, 21123, 21366, 21013, 21367])